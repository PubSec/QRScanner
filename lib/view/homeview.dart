import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QRScanner"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              textAlign: TextAlign.center,
              expands: true,
            )
          ],
        ),
      ),
    );
  }
}
