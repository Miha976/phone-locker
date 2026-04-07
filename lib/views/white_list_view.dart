import 'package:flutter/material.dart';

class WhiteListView extends StatelessWidget {
  const WhiteListView({super.key});

  void _goToAddApplication(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => WhiteListView())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma WhiteList"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => _goToAddApplication(context), child: const Icon(Icons.add),),
    );
  }

}