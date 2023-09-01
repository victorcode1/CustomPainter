import 'package:custom_pinter/config/router/go_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Painter'),
      ),
      body: Center(
        child: ListView(children: [
          ListTile(
            title: const Text('Header Diagonal'),
            onTap: () {
              // Navigate to the details page.
              router.go('/header1');
            },
          ),
          ListTile(
            title: const Text('Header Triangular'),
            onTap: () {
              // Navigate to the details page.
              router.go('/header2');
            },
          ),
          ListTile(
            title: const Text('Header Pico'),
            onTap: () {
              // Navigate to the details page.
              router.go('/header3');
            },
          ),
          ListTile(
            title: const Text('Header Curvo'),
            onTap: () {
              // Navigate to the details page.
              router.go('/header4');
            },
          ),
          ListTile(
            title: const Text('Header wave'),
            onTap: () {
              // Navigate to the details page.
              router.go('/header5');
            },
          ),
          ListTile(
            title: const Text('Header wave con gradiente'),
            onTap: () {
              // Navigate to the details page.
              router.go('/header6');
            },
          ),
        ]),
      ),
    );
  }
}
