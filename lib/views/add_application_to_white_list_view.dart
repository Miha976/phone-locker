import 'package:flutter/material.dart';
import 'package:flutter_device_apps/flutter_device_apps.dart';

class AddApplicationToWhiteListView extends StatefulWidget {
  const AddApplicationToWhiteListView({super.key});

  @override
  State<AddApplicationToWhiteListView> createState() =>
      _AddApplicationToWhiteListViewState();
}

class _AddApplicationToWhiteListViewState
    extends State<AddApplicationToWhiteListView> {
  Future<List<AppInfo>> _getApps() async {
    return await FlutterDeviceApps.listApps(
      includeSystem: false,
      onlyLaunchable: true,
      includeIcons: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Modifier la liste",
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: 
          FutureBuilder(future: _getApps(), builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: const CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Center(child: const Text("Aucune application installée !"));
              } else {
                final data = snapshot.data!;
                return _ListApps(apps: data);
              }
            }
          })
          )
        ],
      ),
      floatingActionButton: FilledButton(onPressed: null, child: const Text("Enregistrer")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _ListApps extends StatelessWidget {
  final List<AppInfo> apps;

  const _ListApps({required this.apps});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 80),
      itemCount: apps.length,
      itemBuilder: (context, index) {
      final app = apps[index];
      return ListTile(title: Text("${app.appName} - ${app.packageName}"),);
    });
  }

}
