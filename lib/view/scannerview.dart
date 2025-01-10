import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qrscanner/provider/scanresultprovider.dart';

class ScannerView extends ConsumerWidget {
  const ScannerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(children: [
        ref.watch(scanResultNotifierProvider.notifier).getScanResult(),
        Dialog(
          child: Container(
            height: 80,
            width: 50,
            padding: const EdgeInsets.all(20),
            child: Text(ref.watch(scanResultNotifierProvider)),
          ),
        ),
      ]),
    );
  }
}
