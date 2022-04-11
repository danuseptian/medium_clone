import 'package:flutter/material.dart';

import '../../../data/dummy.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text(
            'Explore',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search Medium',
            ),
          ),
          SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(dummyData.length, (index) {
                var item = dummyData[index];
                return InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    child: Text('${item['categories']}'),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
