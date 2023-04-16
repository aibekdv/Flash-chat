import 'package:flash_chat/common/primary_color.dart';
import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: primary,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
