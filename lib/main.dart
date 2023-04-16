import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/common/primary_color.dart';
import 'package:flash_chat/feature/presentation/pages/pages.dart';
import 'package:flash_chat/firebase_options.dart';
import 'package:flash_chat/routes/generate_route.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initialization(null);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 4));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flash Chat',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "OpenSans",
          primarySwatch: primary,
        ),
        initialRoute: '/',
        onGenerateRoute: OnGenerateRoute.route,
        routes: {
          "/": (context) {
            return const HomePage();
          }
        });
  }
}
