// import 'dart:convert';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/scheduler.dart';

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:http/http.dart' as http;

// class LocalNotificationService {
//   static final FlutterLocalNotificationsPlugin _notificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   static requestPermission() async {
//     FirebaseMessaging messaging = FirebaseMessaging.instance;

//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );

//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       print('User granted permission');
//     } else if (settings.authorizationStatus ==
//         AuthorizationStatus.provisional) {
//       print('User granted provisional permission');
//     } else {
//       print('User declined or has not accepted permission');
//     }
//   }

//   static initialize() {
//     // initializationSettings  for Android
//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: AndroidInitializationSettings("@mipmap/ic_launcher"),
//     );

//     _notificationsPlugin.initialize(
//       initializationSettings,
//     );
//   }

//   static createanddisplaynotification(RemoteMessage message) async {
//     try {
//       final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
//       const NotificationDetails notificationDetails = NotificationDetails(
//         android: AndroidNotificationDetails(
//           "pushnotificationapp",
//           "pushnotificationappchannel",
//           importance: Importance.max,
//           priority: Priority.high,
//         ),
//       );

//       await _notificationsPlugin.show(
//         id,
//         message.notification!.title,
//         message.notification!.body,
//         notificationDetails,
//         payload: message.data['_id'],
//       );
//     } on Exception catch (e) {
//       print(e);
//     }
//   }

//   static sendPushMessage(String body, String title, String token) async {
//     print(token);
//     try {
//       await http
//           .post(
//             Uri.parse('//fcm.googleapis.com/v1/projects/myproject-b5ae1/messages:send HTTP/1.1'),
//             headers: <String, String>{
//               'Content-Type': 'application/json',
//               'Authorization': "key=AAAA1cqpaXM:APA91bEg_khoC1g8AH041nZBXdSLb9KZlUXZj_nPM0IS4ybthMn0BEzckNQezYoIS9FHbQfIMLix1Ts307o4iLSTlNAHLoB4KfRXidRF2LxiujUnm9X_g9AAV2QFSZscNqP5rdX0A-3W",
//             },
//             body: jsonEncode(
//               <String, dynamic>{
//                 'notification': <String, dynamic>{
//                   'body': body,
//                   'title': title,
//                 },
//                 'priority': 'high',
//                 'data': <String, dynamic>{
//                   'click_action': 'FLUTTER_NOTIFICATION_CLICK',
//                   'id': '1',
//                   'status': 'done'
//                 },
//                 "to": token,
//               },
//             ),
//           )
//           .then((value) => print(value.body.toString()));
//     } catch (e) {
//       print(e.toString());
//       print("error push notification");
//     }
//   }
// }