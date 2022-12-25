import 'package:flutter/material.dart';

import '../home/home.dart';
import 'auth_services.dart';
import 'create_account.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'LOGIN',
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
                  decoration: const InputDecoration(hintText: 'password'),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  padding:
                      EdgeInsets.only(left: 40, right: 40, top: 5, bottom: 5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () async {
                  final message = await AuthService().login(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  if (message!.contains('Success')) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                    ),
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CreateAccount(),
                    ),
                  );
                },
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                    color: Color.fromARGB(255, 46, 147, 162),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
