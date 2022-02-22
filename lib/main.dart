// ignore_for_file: deprecated_member_use
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'data.dart';
//import 'package:agricure/authentication/sign_in_button.dart';
//import 'package:agricure/services/notifications.dart';

//Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
// If you're going to use other Firebase services in the background, such as Firestore,
// make sure you call `initializeApp` before using other Firebase services.

// ignore: avoid_print
//print("Handling a background message: ${message.messageId}");
// final FirebaseMessaging _fcm = FirebaseMessaging.instance;
// _fcm.subscribeToTopic("susya");
//}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  //FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.green[100],
      ),
      home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return NotificationHandler(
    // child: Scaffold(
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Home()));
      },
      // The custom button
      child: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return NotificationHandler(
    // child: Scaffold(
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            // ignore: avoid_unnecessary_containers
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 4),
                Image.asset(
                  "assets/logo1.png",
                  height: 200,
                ),

                //const Spacer(flex: ),
                const Divider(
                  color: Colors.green,
                  height: 30,
                  thickness: 5,
                  indent: 90,
                  endIndent: 90,
                ),
                const Text("AgriCure",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.green,
                        fontWeight: FontWeight.bold)),
                const Divider(
                  color: Colors.green,
                  height: 30,
                  thickness: 5,
                  indent: 90,
                  endIndent: 90,
                ),
                const Spacer(
                  flex: 5,
                )

                // LoginButton(
                //   title: "Login",
                //   onTap: () => Get.to(() => CameraPage()),
                // ),
                //const SignInButton(),
              ],
            )),
          ),
        ],
      ),
      //),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<SliderModel> mySLides = <SliderModel>[];
  int slideIndex = 0;
  late PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySLides = getSlides();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff3C8CE7), Color(0xff00EAFF)])),
      child: Scaffold(
        //backgroundColor: Colors.green,
        body: SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/detectionSlider.jpeg'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Disease Check',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                          color: Colors.green),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        'Take a picture of plant to detect disease and safe it...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.green))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/farming.jpg'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Farming News',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 34,
                          color: Colors.green),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        'Get the farming related news and remain updated...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.green))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/info.jpg'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Dieases Information',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                          color: Colors.green),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        'Get the information about your plant disease and safe it from further loss...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.green))
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: slideIndex != 2
            ? Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        controller.animateToPage(2,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      splashColor: Colors.blue[50],
                      child: const Text(
                        "SKIP",
                        style: TextStyle(
                            color: Color(0xFF0074E4),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          i == slideIndex
                              ? _buildPageIndicator(true)
                              : _buildPageIndicator(false),
                      ],
                    ),
                    FlatButton(
                      onPressed: () {
                        print("this is slideIndex: $slideIndex");
                        controller.animateToPage(slideIndex + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                      },
                      splashColor: Colors.blue[50],
                      child: const Text(
                        "NEXT",
                        style: TextStyle(
                            color: Color(0xFF0074E4),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              )
            : InkWell(
                onTap: () {
                  print("Get Started Now");
                  _settingModalBottomSheet(context);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomeScreen()),
                  // );
                },
                child: Container(
                  height: Platform.isIOS ? 70 : 60,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text(
                    "GET STARTED NOW",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
      ),
    );
  }
}

void _settingModalBottomSheet(BuildContext context) {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Scaffold(
            body: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(20),
                        child: const Text(
                          'Enter phone number',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                        ),
                      ),
                    ),
                    Container(
                        height: 50,
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: const Text('Login'),
                          onPressed: () {
                            print(nameController.text);
                            print(passwordController.text);
                            //Navigator.push(
                            //context,
                            //MaterialPageRoute(
                            //builder: (context) => HomeScreen()),
                            //);
                          },
                        )),
                  ],
                )));
      });
}

class SlideTile extends StatelessWidget {
  late String imagePath, title, desc;

  SlideTile({Key? key, imagePath, title, desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
          const SizedBox(
            height: 40,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(desc,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14))
        ],
      ),
    );
  }
}
