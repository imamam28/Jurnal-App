import 'package:flutter/material.dart';
import 'package:journal/const/app_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConst.appName),
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.add),
          onPressed: () {},
          label: const Text('Buat Biaya Baru'),
        ),
      ),
    );
  }
}
