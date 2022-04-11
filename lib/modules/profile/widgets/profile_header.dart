import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/modules/profile/profile_controller.dart';

import '../../edit_profile/edit_profile_view.dart';
import '../../settings/settings_view.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
    required,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              InkWell(
                onTap: () {
                  Get.to(() => SettingsView());
                },
                child: Icon(Icons.settings),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/lisa.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lisa',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('0 followers • 0 following')
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[800], fixedSize: Size(150, 30)),
                onPressed: () {
                  controller.urlLauncher();
                },
                child: Text(
                  'View stats',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    fixedSize: Size(150, 30)),
                onPressed: () {
                  Get.to(EditProfileView());
                },
                child: Text('Edit your profile'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
