import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/data/dummy.dart';

import '../../article/article_view.dart';

class ExploreTrending extends StatelessWidget {
  const ExploreTrending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.trending_up),
              SizedBox(
                width: 10,
              ),
              Text(
                'TRENDING ON MEDIUM',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: List.generate(
              dummyData.length,
              (index) {
                var item = dummyData[index];
                return ListTile(
                  onTap: () {
                    Get.to(ArticleView(
                      item: item,
                    ));
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    '0${index + 1}',
                    style: TextStyle(fontSize: 32, color: Colors.grey),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          Container(
                            width: 230,
                            child: Text(
                              '${item['name']}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        child: Text(
                          '${item['title']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text('${item['date']} • ${item['read_time']}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
