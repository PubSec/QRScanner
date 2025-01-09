import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qrscanner/provider/gencoderesult.dart';

class GeneratorView extends ConsumerStatefulWidget {
  const GeneratorView({super.key});

  @override
  ConsumerState<GeneratorView> createState() => _GeneratorViewState();
}

class _GeneratorViewState extends ConsumerState<GeneratorView> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRGenerator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ref.watch(genCodeNotifierProvider),
            ),
            SizedBox(
              height: 100,
            ),
            TextField(
              autofocus: true,
              controller: textEditingController,
              decoration: const InputDecoration(
                label: Text('Enter data'),
                border: OutlineInputBorder(),
              ),
            ),
            MaterialButton(
              onPressed: () {
                ref
                    .read(genCodeNotifierProvider.notifier)
                    .getGenCodeResult(textEditingController.text);
              },
              child: const Text('Generate'),
            )
          ],
        ),
      ),
    );
  }
}
