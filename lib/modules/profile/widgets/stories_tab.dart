import 'package:flutter/material.dart';

class StoriesTab extends StatelessWidget {
  const StoriesTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Container(
            width: 330,
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(25)),
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Public'),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey[800],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
