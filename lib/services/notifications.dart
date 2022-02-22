import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class NotificationHandler extends StatefulWidget {
  Widget child;
  NotificationHandler({Key? key, required this.child}) : super(key: key);
  @override
  _NotificationHandlerState createState() => _NotificationHandlerState();
}

class _NotificationHandlerState extends State<NotificationHandler> {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  @override
  // ignore: must_call_super
  void initState() {
    _fcm.subscribeToTopic('susya');
    // _fcm.
    //   onMessage.listen( message) async {
    //     print("onMessage: $message");
    //     showDialog(
    //       context: context,
    //       builder: (context) => AlertDialog(
    //         content: ListTile(
    //           title: Text(message['notification']['title']),
    //           subtitle: Text(message['notification']['body']),
    //         ),
    //         actions: <Widget>[
    //           FlatButton(
    //             child: Text('Ok'),
    //             onPressed: () => Navigator.of(context).pop(),
    //           ),
    //         ],
    //       ))
    //   },
    //   )
    //   onLaunch: (Map<String, dynamic> message) async {
    //     print("onLaunch: $message");
    //     Navigator.push(
    //         context, MaterialPageRoute(builder: (context) => View(false)));
    //   },
    //   onResume: (Map<String, dynamic> message) async {
    //     print("onResume: $message");
    //   },
    // );
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // ignore: avoid_print
      print('Got a message whilst in the foreground!');
      var msg = message.data['body'] ?? ' ';

      Get.snackbar('Susya Alerts', msg,
          duration: const Duration(seconds: 2), backgroundColor: Colors.white);

      if (message.notification != null) {
        // ignore: avoid_print
        print('Message also contained a notification: ${message.notification}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
