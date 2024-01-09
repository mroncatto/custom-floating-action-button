import 'package:flutter/material.dart';

class PageEdit extends StatefulWidget {
  const PageEdit({super.key});

  @override
  State<PageEdit> createState() => _PageEditState();
}

class _PageEditState extends State<PageEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page edit"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
            color: Colors.white,
            child: const Center(
              child: Text("Page edit"),
            )
        ),
      ),
    );
  }
}
