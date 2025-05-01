import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'cart.dart';
import 'cart_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Two Pages',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/cart': (_) => const CartPage(),
      },
    );
  }
}
