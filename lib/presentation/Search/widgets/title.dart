import 'package:flutter/material.dart';

class SearchTextTitle extends StatelessWidget {
  final String text;
   SearchTextTitle({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
                   style: const TextStyle(
     fontSize: 22,
     fontWeight: FontWeight.bold,
                  ),
                  );
  }
}