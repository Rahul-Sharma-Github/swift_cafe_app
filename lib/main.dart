import 'package:flutter/material.dart';

// import 'Screens/coffe_order_screen.dart';
import 'Screens/home_screen.dart';
// import 'Screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home:
          const HomePage(), // Change the Screen/Page to see different screen on App Startup
    );
  }
}
