import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/modules/dashboard/dasboard_view.dart';
import 'package:medium_clone_danu/modules/login/login_view/sign_in_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/medium-logo.png'),
                  ),
                ),
              ),
              Text(
                'Join Medium.',
                style: TextStyle(fontSize: 40),
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.grey),
                    ),
                    onPressed: () {
                      Get.off(() => DashboardView());
                    },
                    child: Text('Sign up with Google'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.grey),
                    ),
                    onPressed: () {
                      Get.offAll(() => DashboardView());
                    },
                    child: Text('Sign up with Email'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    height: 2,
                    width: 100,
                    color: Colors.grey,
                  ),
                  Text(
                    'Or, sign up with',
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    height: 2,
                    width: 100,
                    color: Colors.grey,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.offAll(() => DashboardView());
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/facebook-logo.png'),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Get.offAll(() => SignInView());
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
              Text(
                'By signing up, you agree to our Terms of Service and acknowledge that our Privacy Policy applies to you.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
