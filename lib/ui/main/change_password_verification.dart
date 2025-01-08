import 'package:flutter/material.dart';
import 'package:booking_bus_app/components/modules.dart';  // Assuming PinView is in modules.dart

class ChangePasswordVerification extends StatefulWidget {
  final String pinID;
  ChangePasswordVerification({
    required this.pinID,  // Assuming pinID is required
  });

  @override
  State<StatefulWidget> createState() {
    return _ChangePasswordVerificationState();
  }
}

class _ChangePasswordVerificationState extends State<ChangePasswordVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password Verification"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Please enter your pin code",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20),
            // PinView for entering the pin code
            Container(
              padding: EdgeInsets.all(16.0),
              child: PinView(
                dashPositions: [2, 4],  // Dash positions for visual separation
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
                count: 6,  // Assuming pin has 6 digits

                submit: (String pin) {
                  // Handling pin submission
                  print("Pin entered: $pin");
                  // You can validate the pin or trigger an action here
                },
              ),
            ),
            SizedBox(height: 20),
            TimerVerification(),  // Assuming TimerVerification widget is defined elsewhere
          ],
        ),
      ),
    );
  }
}

//https://pub.dev/packages/pin_view#-readme-tab-