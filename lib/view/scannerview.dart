import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qrscanner/provider/scanresultprovider.dart';

class ScannerView extends ConsumerWidget {
  const ScannerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          ref.read(scanResultNotifierProvider.notifier).getScanResult(),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            child: Expanded(
              child: SelectableText(
                ref.watch(scanResultNotifierProvider).isEmpty
                    ? 'Nothing to show'
                    : ref.watch(scanResultNotifierProvider),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
