import 'package:flutter/material.dart';

class Try extends StatelessWidget {
  final String? id;
  const Try({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Welcome $id"),
    );
  }
}
