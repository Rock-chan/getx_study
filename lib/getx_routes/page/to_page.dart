import 'package:flutter/material.dart';

class ToPage extends StatelessWidget {
  const ToPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Page"),
      ),
      body: const Center(
        child: Text("This is to Page"),
      ),
    );
  }
}
