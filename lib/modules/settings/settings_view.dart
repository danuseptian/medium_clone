import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/modules/login/login_view/sign_in_view.dart';
import 'package:medium_clone_danu/modules/membership/membership_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Get.to(
                  (() => MembershipView()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Become a member',
                  style: TextStyle(
                      color: Colors.green[600], fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              alignment: Alignment.centerLeft,
              child: Text(
                'Configure Medium',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Customize your interests',
                style: TextStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    'Dark mode',
                    style: TextStyle(),
                  ),
                  Spacer(),
                  Text(
                    'System Default',
                    style: TextStyle(
                        color: Colors.green[600], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Push Notifications',
                style: TextStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Email Notifications',
                style: TextStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2, top: 30),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Stats',
                style: TextStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Account',
                style: TextStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              alignment: Alignment.centerLeft,
              child: Text(
                'Social',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Join our community',
                style: TextStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                    height: 20,
                    child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/733/733579.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Twitter',
                    style: TextStyle(),
                  ),
                  Spacer(),
                  Text(
                    'Connect',
                    style: TextStyle(
                        color: Colors.green[600], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                    height: 20,
                    child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/145/145802.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Facebook',
                    style: TextStyle(),
                  ),
                  Spacer(),
                  Text(
                    'Connect',
                    style: TextStyle(
                        color: Colors.green[600], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              alignment: Alignment.centerLeft,
              child: Text(
                'About Medium',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Help',
                style: TextStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Terms of service',
                style: TextStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Text(
                'Privacy policy',
                style: TextStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              alignment: Alignment.centerLeft,
              child: Text(
                'App Control',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 2),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    'Disable image loading',
                    style: TextStyle(),
                  ),
                  Spacer(),
                  Switch(value: false, onChanged: null),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 30),
              color: Colors.white,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    'Limit background data usage to wifi only',
                    style: TextStyle(),
                  ),
                  Spacer(),
                  Switch(value: false, onChanged: null),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.offAll(SignInView());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign out',
                  style: TextStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
