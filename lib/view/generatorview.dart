import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GeneratorView extends StatefulWidget {
  const GeneratorView({super.key});

  @override
  State<GeneratorView> createState() => _GeneratorViewState();
}

class _GeneratorViewState extends State<GeneratorView> {
  final TextEditingController textEditingController = TextEditingController();
  Widget qrPreviewWidget = const FlutterLogo(
    size: 500,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRGenerator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: qrPreviewWidget,
            ),
            TextField(
              autofocus: true,
              controller: textEditingController,
              decoration: const InputDecoration(
                label: Text('Enter the data'),
                border: OutlineInputBorder(),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(
                  () {
                    qrPreviewWidget = PrettyQrView.data(
                      data: textEditingController.text,
                      errorCorrectLevel: QrErrorCorrectLevel.M,
                      decoration: const PrettyQrDecoration(
                        shape: PrettyQrRoundedSymbol(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Generate'),
            )
          ],
        ),
      ),
    );
  }
}
