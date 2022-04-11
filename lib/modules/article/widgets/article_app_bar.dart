import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleAppBar extends StatelessWidget {
  final item;
  const ArticleAppBar({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 300,
            child: Text(
              '${item['title']}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
