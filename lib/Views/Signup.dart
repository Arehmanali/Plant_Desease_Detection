import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Utils/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signup extends StatefulWidget {

  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool showPassword = false;
  bool  showConfirmPassword = false;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  bool signingIn = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  int? passwordLength=0;
  int? confirmPassLength=0;

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
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(
                        height: SizeConfig.safeBlockVertical*2,
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: Icon(
                            Icons.arrow_back_ios,
                            color: primaryColor,
                            size: 25,
                          ))
                        ],
                      ),


                      Container(
                        child: Text("Signup", style: TextSizes.primaryColor14pxw700.copyWith(
                            fontSize: 32
                        ),),
                      ),

                      SizedBox(
                        height: SizeConfig.safeBlockVertical*5,
                      ),


                      Container(
                        height: 55,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(7)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*7),
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3),
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: _nameController,
                          cursorWidth: 1,
                          validator: (input) {
                            if (input == null || input == "") {
                              return "Name is empty";
                            } else {
                              return null;
                            }
                          },
                          cursorColor: Colors.black,
                          style: TextSizes.black14pxw500,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Full name"
                          ),
                        ),
                      ),


                      SizedBox(
                        height: SizeConfig.safeBlockVertical*4,
                      ),
                      Container(
                        height: 55,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(7)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*7),
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3),
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: _emailController,
                          cursorWidth: 1,
                          cursorColor: Colors.black,
                          validator: (input) {
                            if (input == null || input == "") {
                              return "Email is empty";
                            } else if (!input.contains("@")) {
                              return "Email is invalid";
                            } else {
                              return null;
                            }
                          },
                          style: TextSizes.black14pxw500,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email"
                          ),
                        ),
                      ),


                      SizedBox(
                        height: SizeConfig.safeBlockVertical*4,
                      ),

                      Container(
                        height: 55,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(7)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*7),
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3),
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: _passwordController,
                          cursorWidth: 1,
                          obscureText: showPassword?false:true,
                          validator: (input) {
                            if (input == null || input == "") {
                              return "Password is empty";
                            }
                            else {
                              return null;
                            }
                          },
                          cursorColor: Colors.black,
                          onChanged: (txt){
                            setState(() {
                               passwordLength = txt.length;
                            });
                          },
                          style: TextSizes.black14pxw500,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              icon: showPassword?Image.asset("assets/images/hide.png",
                              height: 26,
                                width: 26,
                              ):
                              Icon(
                                Icons.remove_red_eye_rounded,
                                color: Colors.black,
                              ),
                            )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*7,
                        vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (passwordLength == 0)
                               Text("")
                            else if (passwordLength! > 0 && passwordLength! <6)
                              Text("Password strength is weak", style: TextSizes.black12px.copyWith(color: Colors.red),)
                            else if (passwordLength! > 5 && passwordLength! <9)
                                Text("Fair", style: TextSizes.black12px.copyWith(color: Colors.green),)

                            else if (passwordLength! >= 9)
                                  Text("Excellent", style: TextSizes.black12px.copyWith(color: Colors.green),)

                          ],
                        ),
                      ),



                      SizedBox(
                        height: SizeConfig.safeBlockVertical*4,
                      ),

                      Container(
                        height: 55,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(7)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*7),
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3),
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: _confirmPasswordController,
                          cursorWidth: 1,
                          obscureText: showConfirmPassword?false:true,
                          validator: (input) {
                            if (input == null || input == "") {
                              return "Confirm password is empty";
                            }
                            else {
                              return null;
                            }
                          },
                          cursorColor: Colors.black,
                          onChanged: (txt){
                            setState(() {
                              confirmPassLength = txt.length;
                            });
                          },
                          style: TextSizes.black14pxw500,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                              suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    showConfirmPassword = !showConfirmPassword;
                                  });
                                },
                                icon: showConfirmPassword?Image.asset("assets/images/hide.png",
                                height: 26,
                                  width: 26,
                                ):
                                Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Colors.black,
                                ),
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*7,
                            vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (confirmPassLength == 0)
                              Text("")
                            else if (confirmPassLength! > 0 && confirmPassLength! <6)
                              Text("Password strength is weak", style: TextSizes.black12px.copyWith(color: Colors.red),)
                            else if (confirmPassLength! > 5 && confirmPassLength! <9)
                                Text("Fair", style: TextSizes.black12px.copyWith(color: Colors.green),)

                              else if (confirmPassLength! >= 9)
                                  Text("Excellent", style: TextSizes.black12px.copyWith(color: Colors.green),)

                          ],
                        ),
                      ),



                      SizedBox(height: SizeConfig.safeBlockVertical*5,),



                      Container(
                        width: SizeConfig.screenWidth*0.50,
                        height: 48,
                        child: ElevatedButton(onPressed: signUpTapped,

                            style: ElevatedButton.styleFrom(
                              primary: primaryColor
                            ),
                            child: Text("Create Account", style: TextSizes.black14pxw500.copyWith(color: Colors.white),)),
                      ),


                      SizedBox(
                        height: SizeConfig.safeBlockVertical*7,
                      ),


                      Row(
                        children: [
                          SizedBox(width: SizeConfig.safeBlockVertical*4,),
                          Expanded(child: Divider(
                            thickness: 0.5,
                            color: lightGray,
                          ),


                          ),

                          SizedBox(width: SizeConfig.safeBlockVertical*2,),
                          Text("OR", style: TextSizes.black14pxw600,),
                          SizedBox(width: SizeConfig.safeBlockVertical*2,),
                          Expanded(child: Divider(
                            thickness: 0.5,
                            color: lightGray,
                          ),


                          ),
                          SizedBox(width: SizeConfig.safeBlockVertical*4,),

                        ],
                      ),

                      SizedBox(height: SizeConfig.safeBlockVertical*4,),



                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          width: SizeConfig.screenWidth,
                          child: Center(child: Column(
                            children: [
                              Text("Already have an account?", style: TextSizes.black14pxw500,),
                              Text("Login", style: TextSizes.black14pxw600.copyWith(decoration: TextDecoration.underline),),
                            ],
                          )),
                        ),
                      ),





                      SizedBox(
                        height: SizeConfig.safeBlockVertical*5,
                      ),


                    ],
                  ),
                ),
              ),
            ),


            if (signingIn == true)
              Positioned.fill(child: Container(
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

  Future<void> signUpTapped() async {
    if (_formKey.currentState!.validate()) {

      String name = _nameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;
      String confirmPassword = _confirmPasswordController.text;

      final prefs = await SharedPreferences.getInstance();


      if (password != confirmPassword) {
        Utils.showToastMessage(toastMsg: "Password did not match with confirm password");
      }
      else{
        setState(() {
          signingIn = true;
        });

        try {
          final UserCredential _authCredentials = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);


          User? user = _authCredentials.user;

          prefs.setString(prefs_username, name);

          await user!.sendEmailVerification();

          setState(() {
            signingIn = false;
          });




         showEmailSentDialog();



        } on FirebaseAuthException catch (e){
          print("Firebase exception: ${e.message}");
          Utils.showToastMessage(toastMsg: e.message);
          setState(() {
            signingIn = false;
          });
        }


      }


    } else {
      print("not");
    }
  }



  showEmailSentDialog(){
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
                     Text("Confirmation", style: TextSizes.black16pxw700.copyWith(
                       fontWeight: FontWeight.w800
                     ),),
                   ],
                 ),

              SizedBox(height: SizeConfig.safeBlockVertical*4,),
              Text("An email verification link is sent to your email , please verify it before login..!"),
              SizedBox(height: SizeConfig.safeBlockVertical*4,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){
                    final nav = Navigator.of(context);
                    nav.pop();
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
