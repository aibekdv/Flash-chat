import 'package:flutter/material.dart';

class InputFormWidget extends StatelessWidget {
  const InputFormWidget({
    super.key,
    required this.hintText,
    required this.validator,
    required this.prefixIcon,
    required this.editingController,
    required this.keyboardType,
    this.suffixIcon,
    this.isReadOnly = false,
    this.isObsecure = false,
  });

  final String hintText;
  final Function validator;
  final IconData prefixIcon;
  final TextEditingController editingController;
  final IconButton? suffixIcon;
  final bool isReadOnly;
  final bool isObsecure;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: editingController,
      validator: (value) => validator(value),
      readOnly: isReadOnly,
      keyboardType: keyboardType,
      obscureText: isObsecure,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.all(15),
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
