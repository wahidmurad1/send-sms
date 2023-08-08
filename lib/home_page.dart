import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> recepients = ['01734673409', '01723445670'];
  final String message = "This is a test message!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                // await FirebaseApi().initNotifications();
                // _sendSMS(message, recepients);
              },
              child: const Text('Send Sms'),
            ),
          ),
        ],
      ),
    );
  }
}

// void _sendSMS(String message, List<String> recipents) async {
//   String _result = await sendSMS(message: message, recipients: recipents).catchError((onError) {
//     print(onError);
//   });
//   print(_result);
// }
