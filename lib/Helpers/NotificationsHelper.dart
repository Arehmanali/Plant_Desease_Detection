import 'package:agri_cure/Helpers/TimeZone.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class NotificationsHelper {

  static final _flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

//needs an icon
  static final _initializationSettingsAndroid =
  AndroidInitializationSettings('@mipmap/ic_launcher');

  static final _initializationSettings =
  InitializationSettings(android: _initializationSettingsAndroid);

  static Future<void> init() async {
    await _flutterLocalNotificationsPlugin.initialize(_initializationSettings);
    tz.initializeDatabase([]);
  }

  static final _androidNotificationDetails = AndroidNotificationDetails(
    'channel id',
    'channel name',
    //sound: RawResourceAndroidNotificationSound('reminder.mp3'),
    importance: Importance.max,
    playSound: true,
    priority: Priority.high,
  );

  static final _notificationDetails =
  NotificationDetails(android: _androidNotificationDetails);

// set Notification methoud
  static Future<void> setNotification(DateTime dateTime, int id,String title,String body) async {

    final timeZone = TimeZone();

    // The device's timezone.
    String timeZoneName = await timeZone.getTimeZoneName();

    // Find the 'current location'
    final location = await timeZone.getLocation(timeZoneName);

    final scheduledDate = tz.TZDateTime.from(dateTime, location);



    await _flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      scheduledDate,
      _notificationDetails,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

// cancel Notification methoud
  static Future<void> cancelNotification(int id) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
  }
}