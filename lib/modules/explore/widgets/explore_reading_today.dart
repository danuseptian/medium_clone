import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/data/dummy.dart';
import 'package:medium_clone_danu/modules/article/article_view.dart';

class ExploreReadingToday extends StatelessWidget {
  const ExploreReadingToday({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What we\'re reading today',
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Highlights from all corners of Medium.',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(dummyData.length, (index) {
                var item = dummyData[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(ArticleView(
                          item: item,
                        ));
                      },
                      child: Container(
                        height: 150,
                        width: 200,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('${item['article_photo']}'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage('${item['profile_photo']}'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '${item['name']}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 180,
                      child: Text(
                        '${item['title']}',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 180,
                      child: Text(
                        '${item['date']} • ${item['read_time']}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
