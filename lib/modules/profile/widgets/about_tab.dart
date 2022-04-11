import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.topCenter,
        child: Text('This user doesn\'t have a bio'));
  }
}
