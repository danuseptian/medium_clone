import 'package:flutter/material.dart';

class ArticlePost extends StatelessWidget {
  final item;
  const ArticlePost({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${item['title']}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Text(
                  'You have 2 free member-only stories left this month. See the benefits of Medium Membership.'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('${item['article_photo']}'))),
            ),
            Center(
              child: Text(
                'Photo by Gabrielle Henderson on Unsplash',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "  Money is valuable as a unit of account—a socially accepted standard by which things are priced and with which payment is accepted. However, throughout history, both the usage and form of money have evolved. Though the terms \"money\" and \"currency\" are often used interchangeably, several theories suggest that they are not identical. According to some theories, money is inherently an intangible concept, while currency is the physical (tangible) manifestation of the intangible concept of money. By extension, according to this theory, money cannot be touched or smelled. Currency is the coin, note, object, etc. that is presented in the form of money. The basic form of money is numbers; currently, the basic form of currency is paper notes, coins, or plastic cards (e.g., credit or debit cards). \n \n  Though this distinction between money and currency is important in some contexts, for the purposes of this article, the terms are used interchangeably. Money—in some form or another—has been part of human history for at least the past 5,000 years.2 Before that time, historians generally agree that a system of bartering was likely used. Bartering is a direct trade of goods and services; for example, a farmer may exchange a bushel of wheat for a pair of shoes from a shoemaker. \n \n  However, these arrangements take time. If you are exchanging an ax as part of an agreement in which the other party is supposed to kill a woolly mammoth, you have to find someone who thinks an ax is a fair trade for having to face down the 12-foot tusks of a mammoth. If this doesn't work, you would have to alter the deal until someone agreed to the terms. \n \n  Slowly, a type of currency developed over the centuries that involved easily traded items like animal skins, salt, and weapons. These traded goods served as the medium of exchange (even though the value of each of these items was still negotiable in many cases). This system of trading spread across the world and still survives today in some parts of the globe. One of the greatest achievements of the introduction of money was the increased speed at which business, whether it involved mammoth-slaying or monument-building, could be done.",
              textAlign: TextAlign.justify,
              style: TextStyle(),
            ),
          ],
        ),
      ]),
    );
  }
}
