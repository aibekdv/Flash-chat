import 'package:flash_chat/common/app_consts.dart';
import 'package:flutter/material.dart';

import '../feature/presentation/pages/pages.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppConsts.singleChatPage:
        {
          return materialBuilder(
            widget: const SingleChatPage(),
          );
        }
      case AppConsts.loginPage:
        {
          return materialBuilder(
            widget: const LoginPage(),
          );
        }
      case AppConsts.forgotPage:
        {
          return materialBuilder(
            widget: const ForgotPage(),
          );
        }
      case AppConsts.registrationPage:
        {
          return materialBuilder(
            widget: const RegisterPage(),
          );
        }
      default:
        return materialBuilder(
          widget: const ErrorPage(),
        );
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("error"),
      ),
      body: const Center(
        child: Text("error"),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
