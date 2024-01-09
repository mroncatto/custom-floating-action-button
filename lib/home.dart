import 'package:floating_action_button/main.dart';
import 'package:floating_action_button/page/page_add.dart';
import 'package:floating_action_button/page/page_delete.dart';
import 'package:floating_action_button/page/page_edit.dart';
import 'package:floating_action_button/widget/action_button.dart';
import 'package:floating_action_button/widget/expandable_fab.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expandable Fab"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
            color: Colors.white,
            child: const Center(
              child: Text("Custom Floating Action Button"),
            )),
      ),
      floatingActionButton: ExpandableFab(
        distance: 100,
        children: [
          ActionButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PageAdd())),
            icon: const Icon(Icons.add),
            color: Colors.green,
          ),
          ActionButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PageEdit())),
            icon: const Icon(Icons.edit),
            color: Colors.blue,
          ),
          ActionButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PageDelete())),
            icon: const Icon(Icons.delete),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
