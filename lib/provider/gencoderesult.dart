import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GencodeResultNotifier extends Notifier<Widget> {
  //initialize the build
  @override
  build() {
    return Text('');
  }

  //method to update the widget
  void getGenCodeResult(String data) {
    state = PrettyQrView.data(
      decoration: const PrettyQrDecoration(
        shape: PrettyQrSmoothSymbol(),
        // image: PrettyQrDecorationImage(
        //   image: AssetImage('assets/1601911439185.jpg'),
        // ),
      ),
      data: data,
    ) as Widget;
  }
}

final genCodeNotifierProvider =
    NotifierProvider<GencodeResultNotifier, Widget>(() {
  return GencodeResultNotifier();
});
