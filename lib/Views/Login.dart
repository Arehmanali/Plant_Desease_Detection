import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Utils/Utils.dart';
import 'package:agri_cure/Views/ForgetPassword.dart';
import 'package:agri_cure/Views/HomeScreen.dart';
import 'package:agri_cure/Views/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool signingIn = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool showPassword = false;

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 4,
                  ),
                  Container(
                    child: Text(
                      "Login",
                      style:
                          TextSizes.primaryColor14pxw700.copyWith(fontSize: 32),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          height: 55,
                          width: SizeConfig.screenWidth,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(7)),
                          margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.safeBlockHorizontal * 7),
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.safeBlockHorizontal * 3),
                          alignment: Alignment.center,
                          child: TextFormField(
                            controller: _emailController,
                            cursorWidth: 1,
                            validator: (input) {
                              if (input == null || input == "") {
                                return "Email is empty";
                              } else if (!input.contains("@")) {
                                return "Email is invalid";
                              } else {
                                return null;
                              }
                            },
                            cursorColor: Colors.black,
                            style: TextSizes.black14pxw500,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Email"),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 4,
                        ),
                        Container(
                          height: 55,
                          width: SizeConfig.screenWidth,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(7)),
                          margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.safeBlockHorizontal * 7),
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.safeBlockHorizontal * 3),
                          alignment: Alignment.center,
                          child: TextFormField(
                            controller: _passwordController,
                            cursorWidth: 1,
                            validator: (input) {
                              if (input == null || input == "") {
                                return "password is empty";
                              } else {
                                return null;
                              }
                            },
                            obscureText: showPassword?false:true,
                            cursorColor: Colors.black,
                            style: TextSizes.black14pxw500,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Password",
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      showPassword = !showPassword;
                                    });
                                  },
                                  icon: showPassword?Image.asset("assets/images/hide.png",
                                  height: 27,width: 27,
                                  ):
                                  Icon(
                                    Icons.remove_red_eye_rounded,
                                    color: Colors.black,
                                  ),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context,
                        PageTransition(child: ForgetPassword(), type: PageTransitionType.rightToLeft)
                        );
                      }, child: Text(
                        "Forget password",
                        style: TextSizes.black12pxw500,
                      )),

                      SizedBox(width: SizeConfig.safeBlockHorizontal*6,),
                    ],
                  ),

                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 5,
                  ),
                  Container(
                    width: SizeConfig.screenWidth * 0.50,
                    height: 48,
                    child: ElevatedButton(
                        onPressed: loginTapped,
                        style: ElevatedButton.styleFrom(primary: primaryColor),
                        child: Text(
                          "Sign In",
                          style: TextSizes.black14pxw500
                              .copyWith(color: Colors.white),
                        )),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: SizeConfig.safeBlockVertical * 4,
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: lightGray,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockVertical * 2,
                      ),
                      Text(
                        "OR",
                        style: TextSizes.black14pxw600,
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockVertical * 2,
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: lightGray,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockVertical * 4,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: Signup(),
                              duration: Duration(milliseconds: 500),
                              type: PageTransitionType.rightToLeft));
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      width: SizeConfig.screenWidth,
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            "Do not have an account?",
                            style: TextSizes.black14pxw500,
                          ),
                          Text(
                            "Signup",
                            style: TextSizes.black14pxw600
                                .copyWith(decoration: TextDecoration.underline),
                          ),
                        ],
                      )),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            if (signingIn == true)
              Positioned.fill(
                  child: Container(
                color: Colors.white.withOpacity(0.5),
                child: Container(
                    // height: 40,
                    // width: 40,
                    child: Center(child: CircularProgressIndicator())),
              ))
          ],
        ),
      ),
    );
  }

  void loginTapped() async{
    if (_formKey.currentState!.validate()) {
      print("yes");

      String email = _emailController.text;
      String password = _passwordController.text;






        setState(() {
          signingIn = true;
        });

        try {

          final UserCredential _authCredentials = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);


          setState(() {
            signingIn = false;
          });

          if  (_authCredentials.user!.emailVerified){
            savePasswordBottomSheet();
          }
          else{
            showEmailVerificationDialog();
          }




        } on FirebaseAuthException catch (e){
          print("Firebase exception: ${e.message}");
          Utils.showToastMessage(toastMsg: e.message);
          setState(() {
            signingIn = false;
          });
        }




    } else {
      print("not");
    }
  }


  savePasswordBottomSheet(){
   showModalBottomSheet(context: context,

       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.vertical(top: Radius.circular(20))
       ),
       builder: (ctx){
     return Container(
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.vertical(top: Radius.circular(20))
       ),
       padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           SizedBox(height: SizeConfig.safeBlockVertical*3,),
           Text("Save password?",style: TextSizes.black16pxw700,),
           SizedBox(height: SizeConfig.safeBlockVertical*3,),
           Text("Your password will be saved and you won't need to enter the password for next time",style: TextSizes.black12pxw600,),
           SizedBox(height: SizeConfig.safeBlockVertical*3,),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               TextButton(onPressed: (){
                 Navigator.pop(context);

                 Utils.showToastMessage(toastMsg: "Login successful");

                 Navigator.push(
                     context,
                     PageTransition(
                         child: HomeScreen(),
                         duration: Duration(milliseconds: 500),
                         type: PageTransitionType.rightToLeft));



               }, child: Text("Not now", style: TextSizes.primaryColor14pxw600,)),

     TextButton(onPressed: () async{
       Navigator.pop(context);

       final  prefs = await SharedPreferences.getInstance();

       prefs.setBool(prefs_userLoggedIn, true);
       Utils.showToastMessage(toastMsg: "Login successful");

       Navigator.push(
           context,
           PageTransition(
               child: HomeScreen(),
               duration: Duration(milliseconds: 500),
               type: PageTransitionType.rightToLeft));


     }, child: Text("Yes, Save it", style: TextSizes.primaryColor14pxw600,))



     ],
           ),
           SizedBox(height: SizeConfig.safeBlockVertical*3,),
         ],
       ),
     );
   });
  }


  showEmailVerificationDialog(){
    showDialog(context: context, builder: (ctx){
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Action", style: TextSizes.black16pxw700.copyWith(
                      fontWeight: FontWeight.w800
                  ),),
                ],
              ),

              SizedBox(height: SizeConfig.safeBlockVertical*4,),
              Text("Your email is not verified yet, please verify your email first and then try again!"),
              SizedBox(height: SizeConfig.safeBlockVertical*4,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){
                    final nav = Navigator.of(context);
                    nav.pop();
                  }, child: Text("Okay", style: TextSizes.black14pxw700,))
                ],
              )
            ],
          ),
        ),
      );
    });
  }



}
