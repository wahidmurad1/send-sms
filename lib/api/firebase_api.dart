import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handleBackgroundMessage(RemoteMessage? message) async {
  print('Title: ${message!.notification!.title}');
  print('Body: ${message.notification!.body}');
  print('Payload: ${message.data}');
}

Future<void> handleForegroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification!.title}');
  print('Body: ${message.notification!.body}');
  print('Payload: ${message.data}');
  // You can use these details to display a custom in-app notification or UI update.
}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;
  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fcMToken = await _firebaseMessaging.getToken();
    print('Token: $fcMToken');
    // FirebaseMessaging.onMessage.listen(handleForegroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleForegroundMessage);
    FirebaseMessaging.onMessage.listen(handleBackgroundMessage);
    // FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}
