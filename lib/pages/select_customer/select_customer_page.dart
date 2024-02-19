import 'package:flutter/material.dart';
import 'package:journal/const/app_color.dart';
import 'package:journal/models/customer.dart';

class SelectCustomerPage extends StatefulWidget {
  const SelectCustomerPage({super.key});

  @override
  State<SelectCustomerPage> createState() => _SelectCustomerPageState();
}

class _SelectCustomerPageState extends State<SelectCustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: const Icon(Icons.close),
        ),
        title: const Text('Daftar Kontak'),
      ),
      body: ListView.builder(
        itemCount: dummyCustomer.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              dummyCustomer[index].name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.accent,
              ),
            ),
            onTap: () {
              Navigator.pop(context, dummyCustomer[index]);
            },
          );
        },
      ),
    );
  }
}
