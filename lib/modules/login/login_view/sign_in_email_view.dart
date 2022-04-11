import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/modules/dashboard/dasboard_view.dart';

class SignInEmailView extends StatelessWidget {
  const SignInEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/medium-logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Sign in with your email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40),
                ),
                Container(
                  width: 250,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text('Your email'),
                      TextField(
                        // controller: controller.emailC,
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
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
                      Text('Password'),
                      TextField(
                        // controller: controller.passwordC,
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[800],
                        ),
                        onPressed: () async {
                          Get.off(DashboardView());
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
