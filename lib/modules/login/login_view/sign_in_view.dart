import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/modules/dashboard/dasboard_view.dart';
import 'package:medium_clone_danu/modules/login/login_view/sign_in_email_view.dart';
import 'package:medium_clone_danu/modules/login/login_view/sign_up_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

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
                'Welcome Back.',
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
                    child: Text('Sign in with Google'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.grey),
                    ),
                    onPressed: () {
                      Get.to(() => SignInEmailView());
                    },
                    child: Text('Sign in with Email'),
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
                    'Or, sign in with',
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
                  Get.off(DashboardView());
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
                  Text('Don\'t have an account?'),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.off(SignUpView());
                    },
                    child: Text(
                      'Sign Up',
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
