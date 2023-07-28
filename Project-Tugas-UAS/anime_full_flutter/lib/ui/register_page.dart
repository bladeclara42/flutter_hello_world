import 'package:flutter/material.dart';
import 'package:anime_full_flutter/api/mysql_api.dart';

class RegisterPage extends StatefulWidget {
  final Color primaryColor;
  const RegisterPage({super.key, required this.primaryColor});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

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

  Future<void> _handleRegister() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String username = _usernameController.text;

    await _mySQLAPI.register(username, email, password);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Registration Successful'),
          content: const Text('You have successfully registered.'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: widget.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: CustomInputDecoration.getTextFieldDecoration(
                labelText: 'Username',
                primaryColor: widget.primaryColor,
              ),
              cursorColor: widget.primaryColor,
            ),
            TextField(
              controller: _emailController,
              decoration: CustomInputDecoration.getTextFieldDecoration(
                labelText: 'Email',
                primaryColor: widget.primaryColor,
              ),
              cursorColor: widget.primaryColor,
            ),
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
                onPressed: _handleRegister,
                child: const Text('Register'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.primaryColor,
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
