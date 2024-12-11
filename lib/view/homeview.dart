import 'package:flutter/material.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // String scanResult = 'No result';
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRScanner'),
      ),
      body: QRCodeDartScanView(
        takePictureButtonBuilder: (context, controller, isLoading) {
          // if typeScan == TypeScan.takePicture you can customize the button.
          if (isLoading) return const CircularProgressIndicator();
          return ElevatedButton(
            onPressed: controller.takePictureAndDecode,
            child: const Text('Take a picture'),
          );
        },
        typeScan: TypeScan.takePicture,
        onCapture: (Result result) {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(child: Text(result.text));
            },
          );
        },
      ),
    );
  }
}
