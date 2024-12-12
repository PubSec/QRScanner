import 'package:flutter/material.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';
import 'package:qrscanner/view/scannerview.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(10000, 2000),
              ),
            ),
            height: 300,
            child: const Center(
              child: Text(
                'QRScanner',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Click  the button below to scan a qr code'),
              IconButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(
                    MaterialPageRoute(
                      builder: (context) => const ScannerView(),
                    ),
                  );
                },
                icon: const Icon(Icons.qr_code_scanner_rounded),
              )
            ],
          )
        ],
      ),
    );
  }
}
