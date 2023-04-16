import 'package:flash_chat/feature/presentation/widgets/chat_item_widget.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 6),
          itemBuilder: (context, index) {
            return ChatItemWidget(
              name: "User $index",
            );
          },
          itemCount: 8,
        ),
      ),
    );
  }
}
