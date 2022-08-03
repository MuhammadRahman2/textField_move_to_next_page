import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScondPage extends StatelessWidget {
  ScondPage({required this.name, required this.email, required this.phone});

  String name, email, phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scond page')),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Name is : $name'),
              Text('Email is : $email'),
              Text('phone is: $phone'),
            ]),
      ),
    );
  }
}
