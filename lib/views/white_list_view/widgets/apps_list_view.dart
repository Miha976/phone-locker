import 'package:flutter/material.dart';

class AppsListView extends StatelessWidget {
  final List<String> apps;
  const AppsListView({super.key, this.apps = const []});

  @override
  Widget build(BuildContext context) {
    if(apps.isEmpty) {
      return Center(
        child: const Text("Aucune application !"),
      );
    } 
    return ListView.builder(
      itemCount: apps.length,
      itemBuilder: (context, index) {
        final application = apps[index];
        return ListTile(title: Text(application),);
    });
  }
}