import 'package:flutter/material.dart';
import 'package:path_intern_mobile/screens/home/home.dart';

import 'auth_services.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'CREATE ACCOUNT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 200,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'email'),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'password',
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                padding:
                    EdgeInsets.only(left: 40, right: 40, top: 5, bottom: 5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () async {
                final message = await AuthService().registration(
                  email: _emailController.text,
                  password: _passwordController.text,
                );
                if (message!.contains('Success')) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              },
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
