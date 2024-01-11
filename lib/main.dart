import 'package:entryexit/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entry and Exit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        colorScheme: const ColorScheme.light(
          background: Color.fromRGBO(255, 255, 255, 1),
        ),
        useMaterial3: true,
      ),
      initialRoute: LoginScreen.routerName,
      routes: {
        LoginScreen.routerName: (_) => const LoginScreen(),
        HomeScreen.routerName: (_) => const HomeScreen(),
        ExitScreen.routerName: (_) => const ExitScreen(),
        ProductsScreen.routerName: (_) => const ProductsScreen(),
        UsersScreen.routerName: (_) => const UsersScreen(),
      },
    );
  }
}
