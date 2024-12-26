import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

class ScanResultNotifier extends Notifier<String> {
  //initial value
  @override
  String build() {
    return '';
  }

  //method to update the state
  QRCodeDartScanView getScanResult() {
    return QRCodeDartScanView(
      resolutionPreset: QRCodeDartScanResolutionPreset.max,
      lockCaptureOrientation: DeviceOrientation.portraitUp,
      heightPreview: 600,
      onCapture: (Result result) {
        state = result.text;
      },
    );
  }
}

final scanResultNotifierProvider =
    NotifierProvider<ScanResultNotifier, String>(() {
  return ScanResultNotifier();
});
