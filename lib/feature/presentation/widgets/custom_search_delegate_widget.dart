import 'package:flash_chat/common/primary_color.dart';
import 'package:flash_chat/feature/presentation/widgets/chat_item_widget.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  final _suggestions = ['Rick', 'Morty'];
  final scrollController = ScrollController();

  @override
  String? get searchFieldLabel => "Search for characters...";

  @override
  TextStyle? get searchFieldStyle => const TextStyle(fontSize: 16);

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        shadowColor: primary,
        elevation: 0.5,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
    );
  }

  void setupScrollController(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          // context.read<SearchBloc>();
        }
      }
    });
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
        splashRadius: 25,
        icon: const Icon(
          Icons.clear,
          color: primary,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      splashRadius: 25,
      icon: const Icon(
        Icons.arrow_back,
        color: primary,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context, index) {
          return ChatItemWidget(name: "Name $index");
        },
        itemCount: _suggestions.length,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(15),
      itemBuilder: (context, index) {
        return Text(
          _suggestions[index],
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: _suggestions.length,
    );
  }
}
