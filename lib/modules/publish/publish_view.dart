import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PublishView extends StatelessWidget {
  const PublishView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: EdgeInsets.only(right: 18, top: 18),
              child: Text(
                'Save',
                style: TextStyle(
                    color: Colors.green[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.close),
        ),
        title: Text('Publish'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Insert your message",
                ),
                scrollPadding: EdgeInsets.all(20.0),
                keyboardType: TextInputType.multiline,
                maxLines: 99999,
                autofocus: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
