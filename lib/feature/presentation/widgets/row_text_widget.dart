import 'package:flash_chat/common/primary_color.dart';
import 'package:flutter/material.dart';

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    super.key,
    required this.title1,
    required this.title2,
    required this.onTap,
  });

  final String title1;
  final String title2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          title1,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: onTap,
          child:  Text(
            title2,
            style: const TextStyle(
              fontSize: 16,
              color: primary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
