import 'package:flutter/material.dart';

// 1. Impor paket privat yang sudah diunduh
import 'package:private_greeting_local/private_greeting_local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. Panggil fungsi dari paket privat Anda
    final String welcomeMessage = getGreeting("Candra Kurniawan");

    return MaterialApp(
      title: 'Customer App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Customer App')),
        body: Center(
          // 3. Tampilkan pesan dari paket di layar
          child: Text(
            welcomeMessage,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
