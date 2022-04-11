import 'package:flutter/material.dart';
import 'package:medium_clone_danu/data/dummy.dart';

class ListsTab extends StatelessWidget {
  const ListsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reading List',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text('4 stories'),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.lock,
                                color: Colors.grey[800],
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      dummyData.length,
                      (index) {
                        var item = dummyData[index];
                        return Container(
                          height: 100,
                          width: 125,
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('${item['article_photo']}'),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
