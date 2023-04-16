import 'package:flash_chat/common/app_consts.dart';
import 'package:flash_chat/common/primary_color.dart';
import 'package:flash_chat/feature/presentation/widgets/header_text_container_widget.dart';
import 'package:flash_chat/feature/presentation/widgets/input_form_widget.dart';
import 'package:flash_chat/feature/presentation/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isObsecure = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HeaderTextWidget(title: "Login"),
                const SizedBox(height: 20),
                InputFormWidget(
                  editingController: _emailController,
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email,
                  validator: (String? value) {},
                ),
                const SizedBox(height: 10),
                InputFormWidget(
                  editingController: _passwordController,
                  hintText: "Password",
                  prefixIcon: Icons.lock,
                  validator: (String? value) {},
                  isObsecure: isObsecure,
                  keyboardType: TextInputType.text,
                  suffixIcon: IconButton(
                    onPressed: () {
                      isObsecure = !isObsecure;
                      setState(() {});
                    },
                    icon: Icon(
                      isObsecure ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, AppConsts.forgotPage),
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 16,
                          color: primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                RowTextWidget(
                  onTap: () {
                    Navigator.pushNamed(context, AppConsts.registrationPage);
                  },
                  title1: "Don't have an account?",
                  title2: "Register",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
