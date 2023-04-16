import 'package:flash_chat/feature/presentation/widgets/message_box_widget.dart';
import 'package:flutter/material.dart';

class SingleChatPage extends StatelessWidget {
  const SingleChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            IconButton(
              onPressed: () => Navigator.pop(context),
              splashRadius: 25,
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
        title: Row(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage("assets/images/default-photo.jpg"),
              radius: 18,
            ),
            SizedBox(width: 8),
            Text(
              "UserName",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 10),
                children: const [
                  MessageBox(isMe: true,),
                  MessageBox(isMe: false,),
                  MessageBox(isMe: true,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: Material(
                      elevation: 10,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter your text here...",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      padding: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                        side: BorderSide.none,
                      ),
                      elevation: 10,
                    ),
                    child: const Icon(Icons.send),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
