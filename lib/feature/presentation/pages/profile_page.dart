import 'package:flash_chat/common/primary_color.dart';
import 'package:flash_chat/feature/presentation/widgets/input_form_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage:
                        AssetImage("assets/images/default-photo.jpg"),
                    radius: 35,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Change photo",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: primary.shade400,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  InputFormWidget(
                    editingController: _nameController,
                    hintText: "Username",
                    prefixIcon: Icons.person,
                    keyboardType: TextInputType.text,
                    validator: (String? value) {},
                  ),
                  const SizedBox(height: 10),
                  InputFormWidget(
                    editingController: _emailController,
                    hintText: "Email",
                    prefixIcon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {},
                    isReadOnly: true,
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Update profile"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
