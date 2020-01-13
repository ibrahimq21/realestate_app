import 'package:flutter/material.dart';

class ShortFilterButton extends StatelessWidget {
  final String title;

  ShortFilterButton({@required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 10.0,
      color: Colors.white,
      onPressed: () {},
      child: Text(title),
    );
  }
}
