import 'package:anime_full_flutter/ui/debug_page.dart';
import 'package:anime_full_flutter/ui/detailed_page.dart';
import 'package:anime_full_flutter/ui/search_page.dart';
import 'package:flutter/material.dart';
import 'package:anime_full_flutter/ui/start_page.dart';
import 'package:anime_full_flutter/ui/login_page.dart';
import 'package:anime_full_flutter/ui/register_page.dart';
import 'package:anime_full_flutter/ui/logout_page.dart';
import 'package:anime_full_flutter/ui/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Jikan API Test';
  static const _primaryColor = Color(0xFFFF2889);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primaryColor: _primaryColor,
      ),
      initialRoute: '/',
      routes: {
        '/debug': (context) => DebugPage(),
        '/': (context) => const StartPage(
              primaryColor: _primaryColor,
            ),
        '/login': (context) => const LoginPage(
              primaryColor: _primaryColor,
            ),
        '/register': (context) => const RegisterPage(
              primaryColor: _primaryColor,
            ),
        '/main': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          final username = args['username'] as String;
          final email = args['email'] as String?;
          final id = args['id'] as int;
          if (email == null) {
            authError(context);
            return const LoginPage(
              primaryColor: _primaryColor,
            );
          } else {
            return MainPage(
              email: email,
              username: username,
              id: id,
              primaryColor: _primaryColor,
            );
          }
        },
        '/detailed': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          final username = args['username'] as String;
          final email = args['email'] as String?;
          final id = args['id'] as int;
          final malId = args['malId'] as int;
          if (email == null) {
            authError(context);
            return const LoginPage(
              primaryColor: _primaryColor,
            );
          } else {
            return DetailedPage(
              email: email,
              username: username,
              id: id,
              primaryColor: _primaryColor,
              malId: malId,
            );
          }
        },
        '/search': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          final username = args['username'] as String;
          final email = args['email'] as String?;
          final id = args['id'] as int;
          if (email == null) {
            authError(context);
            return const LoginPage(
              primaryColor: _primaryColor,
            );
          } else {
            return SearchPage(
              email: email,
              username: username,
              id: id,
              primaryColor: _primaryColor,
            );
          }
        },
        '/logout': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          final email = args['email'] as String?;
          final username = args['username'] as String;
          if (email == null) {
            authError(context);
            return const LoginPage(
              primaryColor: _primaryColor,
            );
          } else {
            return LogoutPage(username: username, email: email);
          }
        },
      },
    );
  }
}

void authError(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Authentication Error'),
        content: Text('You are not authenticated or need to register.'),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
