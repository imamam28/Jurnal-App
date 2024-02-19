import 'package:flutter/material.dart';
import 'package:journal/const/app_const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:journal/pages/expense/add_expense/add_expense_page.dart';
import 'package:journal/pages/expense/add_expense/bloc/add_expense_bloc.dart';

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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => AddExpenseBloc(),
                  child: const AddExpensePage(),
                ),
              ),
            );
          },
          label: const Text('Buat Biaya Baru'),
        ),
      ),
    );
  }
}
