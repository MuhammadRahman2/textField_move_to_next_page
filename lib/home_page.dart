import 'package:flutter/material.dart';
import 'package:text_moveto_naxtpage/second_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          controller: _name,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your Name',
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          controller: _email,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your email',
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          controller: _phone,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your phone',
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => ScondPage(
                          name: _name.text,
                          email: _email.text,
                          phone: _phone.text),
                    ),
                  );
                },
                child: const Text('Go to next page'))),
      )
    ]));
  }
}
