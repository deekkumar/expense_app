import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ocr_data_source.g.dart';

abstract class OCRDataSource {
  Future<String> scanReceipt(XFile image);
  Future<void> close();
}

class OCRDataSourceImpl implements OCRDataSource {
  final _textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

  @override
  Future<String> scanReceipt(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    final recognizedText = await _textRecognizer.processImage(inputImage);
    return recognizedText.text;
  }

  @override
  Future<void> close() async {
    await _textRecognizer.close();
  }
}

@riverpod
OCRDataSource ocrDataSource(Ref ref) {
  final source = OCRDataSourceImpl();
  ref.onDispose(() => source.close());
  return source;
}
