import 'package:flash_chat/feature/presentation/pages/single_chat_page.dart';
import 'package:flutter/material.dart';

class ChatItemWidget extends StatelessWidget {
  const ChatItemWidget({
    super.key,
    required this.name,
    this.timeStamp,
    this.lastMessage,
  });

  final String name;
  final String? timeStamp;
  final String? lastMessage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SingleChatPage(),
          ),
        );
      },
      leading: const CircleAvatar(
        backgroundColor: Colors.grey,
        backgroundImage: AssetImage("assets/images/default-photo.jpg"),
        radius: 25,
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: lastMessage != null
          ? Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                lastMessage!,
                style: const TextStyle(
                  fontSize: 14,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            )
          : const SizedBox(),
      trailing: Text(
        timeStamp ?? "",
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
