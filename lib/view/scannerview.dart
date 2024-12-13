import 'package:flutter/material.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

class ScannerView extends StatelessWidget {
  const ScannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QRCodeDartScanView(
        resolutionPreset: QRCodeDartScanResolutionPreset.max,
        onCapture: (Result result) {
          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Container(
                    height: 80,
                    width: 50,
                    padding: const EdgeInsets.all(20),
                    child: Text(result.text)),
              );
            },
          );
        },
      ),
    );
  }
}
