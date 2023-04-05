import 'package:flutter/material.dart';
import 'package:flutter_project/views/Home.dart';
import 'package:flutter_project/views/Login.dart';
import 'package:flutter_project/views/Register.dart';
import 'package:flutter_project/views/Welcome.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Padsou",
      routerConfig: _router,

    );
  }

  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Welcome(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => Register(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => Login(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => Home(),
      ),
      GoRoute(
        path: '/add',
        builder: (context, state) => Login(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => Home(),
      ),
    ]
  );
}
