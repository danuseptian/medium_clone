import 'package:flutter/material.dart';

class BookmarkHeader extends StatelessWidget {
  const BookmarkHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Your Lists',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(100, 30),
            primary: Colors.green[700],
          ),
          onPressed: () {},
          child: Text(
            'New lists',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
