import 'package:flutter/material.dart';
import 'package:phone_locker_app/views/white_list_view/white_list_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WhiteListView(),
    );
  }

}