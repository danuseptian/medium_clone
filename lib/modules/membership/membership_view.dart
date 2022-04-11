import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MembershipView extends StatelessWidget {
  const MembershipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[300],
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Try Medium membership free for 1 month.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Read unlimited, ad-free stories across all of your devices. Cancel anytime.',
                  textAlign: TextAlign.center,
                  style: TextStyle(),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              height: 150,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'IDR 68,000 / month after trial ends.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    height: 40,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: Text(
                      'Start free trial',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    ' IDR 690,000 / year after trial ends.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      'Start free trial',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'By clicking "Start free trial", you agree to our Membership Terms of Service and after a 1-month free trial, your payment method will, based on your selection, be changed on a recurring basis USD \$4.99 monthly or USD \$49.99 annually (prices subject to change) until you decide to cancel your membership through the Play Store (cancellation effective at end of current billing cycle).'),
            SizedBox(
              height: 10,
            ),
            Divider(height: 10, color: Colors.black),
            SizedBox(
              height: 10,
            ),
            Text(
              'Terms & Conditions',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Read our Terms of Service and Privacy Policy for more info. Your Medium membership will be billed in your local currency, using exchange rates set by Google Play. '),
            SizedBox(
              height: 20,
            ),
            Text(
                'Your payments will be processed by Google Play within 24 hours of the end of the current monthly cycle. Unfortunately, refunds can\'t be provied for any unused portion of the term.')
          ],
        ),
      ),
    );
  }
}
