import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../grocery/domain/entities/grocery_item.dart';

part 'ocr_state.freezed.dart';

@freezed
class GroceryOCRState with _$GroceryOCRState {
  const factory GroceryOCRState({
    @Default(false) bool isScanning,
    @Default([]) List<GroceryItem> scannedItems,
    String? error,
  }) = _GroceryOCRState;
}
