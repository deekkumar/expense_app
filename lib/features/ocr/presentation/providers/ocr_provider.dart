import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/ocr_data_source.dart';
import '../../domain/usecases/scan_receipt_usecase.dart';
import '../../../grocery/domain/entities/grocery_item.dart';
import 'ocr_state.dart';

part 'ocr_provider.g.dart';

@riverpod
class GroceryOCRNotifier extends _$GroceryOCRNotifier {
  @override
  GroceryOCRState build() {
    return const GroceryOCRState();
  }

  Future<void> pickAndScanImage(ImageSource source) async {
    // 1. Reset error state but don't start loading yet
    state = state.copyWith(error: null);

    try {
      // 2. Pick Image FIRST (UI handling this phase natively)
      final picker = ImagePicker();
      final image = await picker.pickImage(source: source);

      // 3. Handle Cancellation
      if (image == null) {
        // User cancelled, do nothing (or reset error if you want)
        return;
      }

      // 4. Start Loading (OCR Phase)
      state = state.copyWith(isScanning: true);

      // 5. Perform OCR
      final dataSource = ref.read(ocrDataSourceProvider);
      final rawText = await dataSource.scanReceipt(image);

      final useCase = ref.read(scanReceiptUseCaseProvider);
      final items = useCase.execute(rawText);

      // 6. Update State with Results
      if (items.isEmpty) {
        state = state.copyWith(
          isScanning: false,
          error: "No items detected. Please try again or add manually.",
        );
      } else {
        state = state.copyWith(isScanning: false, scannedItems: items);
      }
    } catch (e) {
      // 7. Handle Errors
      state = state.copyWith(
        isScanning: false,
        error: "Failed to scan: ${e.toString()}",
      );
    }
  }

  void updateItem(GroceryItem updatedItem) {
    state = state.copyWith(
      scannedItems: state.scannedItems.map((item) {
        return item.id == updatedItem.id ? updatedItem : item;
      }).toList(),
    );
  }

  void removeItem(String id) {
    state = state.copyWith(
      scannedItems: state.scannedItems.where((item) => item.id != id).toList(),
    );
  }

  void clear() {
    state = const GroceryOCRState();
  }
}
