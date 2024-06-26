import 'package:flutter/material.dart';
import 'package:healthyme/features/menu_items_list/presentation/pages/menu_items_list_view.dart';

class MainScaffold extends StatelessWidget {
  final Widget child;

  MainScaffold({required this.child, required ValueKey<String> key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            MenuList(),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
