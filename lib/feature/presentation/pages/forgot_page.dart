import 'package:flash_chat/common/app_consts.dart';
import 'package:flash_chat/feature/presentation/widgets/header_text_container_widget.dart';
import 'package:flash_chat/feature/presentation/widgets/input_form_widget.dart';
import 'package:flash_chat/feature/presentation/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final _emailController = TextEditingController();

  bool isObsecure = true;

  @override
  void dispose() {
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
                const HeaderTextWidget(title: "Forgot Password"),
                Text(
                  "Don't worry! Just fill in your email and ${AppConsts.appName} will send you a link to rest your password.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(.6),
                  ),
                ),
                const SizedBox(height: 20),
                InputFormWidget(
                  editingController: _emailController,
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email,
                  validator: (String? value) {},
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
                    "Send link",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                RowTextWidget(
                  onTap: () {
                    Navigator.pushNamed(context, AppConsts.loginPage);
                  },
                  title1: "Remember the account information?",
                  title2: "Login",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
