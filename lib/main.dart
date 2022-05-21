import 'package:agri_cure/Controllers/DiseaseIdentificationProvider.dart';
import 'package:agri_cure/Controllers/DrawerProvider.dart';
import 'package:agri_cure/Controllers/NewsProvider.dart';
import 'package:agri_cure/Controllers/NotesProvider.dart';
import 'package:agri_cure/Controllers/WeatherProvider.dart';
import 'package:agri_cure/Controllers/WeatherProviderNew.dart';
import 'package:agri_cure/Helpers/NotificationsHelper.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Views/Splash.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  navigatorKey = new GlobalKey<NavigatorState>();
  initAwesomeNotifications();
  await NotificationsHelper.init();

  runApp(MyApp());
}

void initAwesomeNotifications() {

  AwesomeNotifications().initialize(
    // set the icon to null if you want to use the default app icon
      null,
      [
        NotificationChannel(
            channelGroupKey: 'basic_channel_group',
            channelKey: 'basic_channel',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            defaultColor: Color(0xFF9D50DD),
            ledColor: Colors.white)
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
            channelGroupkey: 'basic_channel_group',
            channelGroupName: 'Basic group')
      ],
      debug: true
  );
  AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
    if (!isAllowed) {
      // This is just a basic example. For real apps, you must show some
      // friendly dialog box before call the request method.
      // This is very important to not harm the user experience
      AwesomeNotifications().requestPermissionToSendNotifications();
    }
  });

  AwesomeNotifications().actionStream.listen(
          (ReceivedNotification receivedNotification){

         print("Received notification: ${receivedNotification.title}");
      }
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DrawerProvider>(create: (_)=>DrawerProvider()),
        ChangeNotifierProvider<NewsProvider>(create: (_)=>NewsProvider()),
        ChangeNotifierProvider<DiseaseIdentificationProvider>(create: (_)=>DiseaseIdentificationProvider()),
        ChangeNotifierProvider<NotesProvider>(create: (_)=>NotesProvider()),
        ChangeNotifierProvider<WeatherProviderNew>(create: (_)=>WeatherProviderNew()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: primaryColor
        ),
        home: Splash(
        )
      ),
    );
  }
}

