import 'package:flash_chat/common/app_consts.dart';
import 'package:flash_chat/feature/presentation/widgets/header_text_container_widget.dart';
import 'package:flash_chat/feature/presentation/widgets/input_form_widget.dart';
import 'package:flash_chat/feature/presentation/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isObsecure = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
                const HeaderTextWidget(title: "Registration"),
                const SizedBox(height: 20),
                InputFormWidget(
                  editingController: _nameController,
                  hintText: "Username",
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.person,
                  validator: (String? value) {},
                ),
                const SizedBox(height: 10),
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
                const SizedBox(height: 10),
                InputFormWidget(
                  editingController: _passwordController,
                  hintText: "Password confirm",
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
                    "Register",
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
