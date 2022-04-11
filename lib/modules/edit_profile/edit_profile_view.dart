import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/modules/edit_profile/edit_profile_controller.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EditProfileController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.close,
            color: Colors.grey[600],
          ),
        ),
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
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Edit your profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/lisa.jpg'),
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Choose an image',
                    style: TextStyle(
                        color: Colors.green[600],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                SizedBox(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: controller.nameC,
              decoration: InputDecoration(
                fillColor: Colors.white,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Bio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: controller.bioC,
              decoration: InputDecoration(
                fillColor: Colors.white,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
