import 'package:flutter/material.dart';

class UntilPage extends StatelessWidget {
  const UntilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Until Page"),
      ),
      body: const Center(
        child: Text("This is Until Page "),
      ),
    );
  }
}
