import 'package:flutter/material.dart';
import 'package:anime_full_flutter/api/mysql_api.dart';

class LoginPage extends StatefulWidget {
  final Color primaryColor;
  const LoginPage({super.key, required this.primaryColor});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late MySQLAPI _mySQLAPI;

  @override
  void initState() {
    super.initState();
    _mySQLAPI = MySQLAPI();
    _mySQLAPI.connectToMySQL();
  }

  @override
  void dispose() {
    _mySQLAPI.closeConnection();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    Map<String, dynamic>? userDetails = await _mySQLAPI.login(email, password);

    if (userDetails != null) {
      final email = userDetails['email'];
      final username = userDetails['username'];
      final id = userDetails['id'];
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Login Successful'),
            content: Text('Welcome, $email!'),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushReplacementNamed(
                    context,
                    '/main',
                    arguments: {'id': id, 'email': email, 'username': username},
                  );
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Login Failed'),
            content: const Text('Invalid email or password.'),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: widget.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: CustomInputDecoration.getTextFieldDecoration(
                labelText: 'Email',
                primaryColor: widget.primaryColor,
              ),
              cursorColor: widget.primaryColor,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: CustomInputDecoration.getTextFieldDecoration(
                labelText: 'Password',
                primaryColor: widget.primaryColor,
              ),
              cursorColor: widget.primaryColor,
              obscureText: true,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: _handleLogin,
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.primaryColor,
                )),
            const SizedBox(height: 16),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text('Register'),
                style: TextButton.styleFrom(
                  foregroundColor: widget.primaryColor,
                )),
          ],
        ),
      ),
    );
  }
}

class CustomInputDecoration {
  static InputDecoration getTextFieldDecoration({
    required String labelText,
    required Color primaryColor,
  }) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: primaryColor,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
    );
  }
}
