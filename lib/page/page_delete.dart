import 'package:flutter/material.dart';

class PageDelete extends StatefulWidget {
  const PageDelete({super.key});

  @override
  State<PageDelete> createState() => _PageDeleteState();
}

class _PageDeleteState extends State<PageDelete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page delete"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
            color: Colors.white,
            child: const Center(
              child: Text("Page delete"),
            )
        ),
      ),
    );
  }
}
