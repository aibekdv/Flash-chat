import 'package:flash_chat/common/primary_color.dart';
import 'package:flash_chat/feature/presentation/pages/pages.dart';
import 'package:flash_chat/feature/presentation/widgets/custom_search_delegate_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("FlashChat"),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              tooltip: "Search",
              icon: const Icon(Icons.search),
              splashRadius: 25,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              splashRadius: 25,
              tooltip: "More",
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    enabled: true,
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.logout,
                          color: primary,
                        ),
                        SizedBox(width: 10),
                        Text("Logout"),
                      ],
                    ),
                  ),
                ];
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatsPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}
