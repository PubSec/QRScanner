import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String result = 'Scan failed';
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRScanner'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String? res = await SimpleBarcodeScanner.scanBarcode(
              context,
              barcodeAppBar: const BarcodeAppBar(
                appBarTitle: 'QR Scanner',
                enableBackButton: true,
                backButtonIcon: Icon(Icons.arrow_back_ios_new),
              ),
              cameraFace: CameraFace.back,
              isShowFlashIcon: true,
            );
            setState(
              () {
                result = res as String;
              },
            );
            print(result);
          },
          child: const Text('Scan'),
        ),
      ),
    );
  }
}
