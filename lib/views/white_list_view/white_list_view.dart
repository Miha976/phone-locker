import 'package:flutter/material.dart';
import 'package:phone_locker_app/views/add_application_to_white_list_view.dart';
import 'package:phone_locker_app/views/white_list_view/widgets/apps_list_view.dart';

class WhiteListView extends StatelessWidget {
  const WhiteListView({super.key});

  void _goToAddApplication(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => AddApplicationToWhiteListView())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma WhiteList"),
      ),
      body: Column(
        children: [
          Expanded(child: const AppsListView())
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => _goToAddApplication(context), child: const Icon(Icons.edit),),
    );
  }
}