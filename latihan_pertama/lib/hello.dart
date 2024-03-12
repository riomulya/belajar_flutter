import 'package:flutter/material.dart';
// export '';

class Hello extends StatelessWidget {
  const Hello({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Hello world Flutter"),
      ),
      body: const Center(
        child: Text("Hello World Flutter"),
      ),
    );
  }
}
