import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/data/dummy.dart';
import 'package:medium_clone_danu/modules/article/article_view.dart';

class SavedTab extends StatelessWidget {
  const SavedTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          dummyData.length,
          (index) {
            var item = dummyData[index];
            return InkWell(
              onTap: () {
                Get.to(ArticleView(
                  item: item,
                ));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage('${item['profile_photo']}'),
                        ),
                        SizedBox(width: 10),
                        Text('${item['name']}'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              child: Text(
                                '${item['title']}',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '${item['date']} • ${item['read_time']}',
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                '${item['article_photo']}',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('${item['categories']}'),
                        Spacer(),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.bookmark_add_outlined),
                              Icon(Icons.more_vert)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
