import 'package:flutter/material.dart';

import '../../../data/dummy.dart';

class ArticleRecommended extends StatelessWidget {
  const ArticleRecommended({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'RECOMMENDED STORIES',
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(
              dummyData.length,
              (index) {
                var item = dummyData[index];
                return Column(
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
