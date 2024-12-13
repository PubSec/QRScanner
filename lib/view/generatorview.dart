import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GeneratorView extends StatefulWidget {
  const GeneratorView({super.key});

  @override
  State<GeneratorView> createState() => _GeneratorViewState();
}

class _GeneratorViewState extends State<GeneratorView> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    PrettyQrView? userPost;
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRGenerator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: Container(
              child: userPost,
            )),
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
                PrettyQrView.data(
                    data: textEditingController.text, errorCorrectLevel: 3);
              },
              child: const Text('Generate'),
            )
          ],
        ),
      ),
    );
  }
}
