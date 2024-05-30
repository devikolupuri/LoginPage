import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.emailOnChanged,
    required this.loginClick,
    required this.passwordOnChange
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final Function(String)? emailOnChanged;
  final void Function() loginClick;
  final Function(String)? passwordOnChange;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'^[a-zA-Z0-9+._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
                 return 'Please enter a valid email address';
                 }
                return null;
              },
              onChanged: emailOnChanged,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              onChanged: passwordOnChange,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: loginClick,
              style: ElevatedButton.styleFrom(
                // fixedSize: Size(200, 50),
                backgroundColor:
                    const Color.fromARGB(255, 38, 72, 240),
                    fixedSize: const  Size(200, 50)
              ),
              child:  const Text('Login'),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account? ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the Contact Us screen
                },
                child: const Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Color.fromARGB(255, 22, 73, 213),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}