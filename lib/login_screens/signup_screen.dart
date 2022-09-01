import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/shop_home/components/Home.dart';

import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  var fullName = TextEditingController();
  var phoneNoOREmail =TextEditingController();
  var password=TextEditingController();
  var confirmPassword =TextEditingController();
  var formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:CircleAvatar(
          radius: 15.0,
          backgroundColor: Colors.blueAccent,
          child: IconButton(onPressed: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context){
              return LoginScreen();
            },
            ),
            );
          },
              icon: Icon(
                Icons.arrow_back,
              )),
        ),
        toolbarOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.blueAccent,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5.0,
              left: 15.0,
              right: 15.0,
              bottom: 15.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(12.0),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0,
                          ),
                        ),
                        SizedBox(
                            height:40.0
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Full Name',
                              style:TextStyle(
                                fontSize: 15.0,
                              ) ,
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              controller: fullName,
                              onFieldSubmitted: (value) {},
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "name must not be empty";
                                }
                                else if(value.length<3){
                                  return 'the name is too short';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_rounded),
                                hintText: 'Enter your Name',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 1.5,
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Phone No/Email'),
                            SizedBox(
                              height: 5.0,
                            ),
                            TextFormField(
                              controller: phoneNoOREmail,
                              onFieldSubmitted: (value) {},
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter your PhoneNo/Email";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.phone_android_rounded),
                                suffixIcon: Icon(Icons.email_outlined),
                                hintText: 'Enter your phone no/emaill',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Password'),
                            SizedBox(
                              height: 5.0,
                            ),
                            TextFormField(
                              controller: password,
                              onFieldSubmitted: (value) {},
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter Password ";
                                }
                                else if(value.length<6){
                                  return 'Minimum password is 6 characters';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline_rounded),
                                suffixIcon: Icon(Icons.visibility),
                                hintText: 'Enter your Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Confirm Password'),
                            SizedBox(
                              height: 5.0,
                            ),
                            TextFormField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              controller: confirmPassword,
                              onFieldSubmitted: (value) {},
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Re-enter Password";
                                }
                                else if (value!=password.text){
                                  return 'Please Re-enter your Password Correctly';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline_rounded),
                                suffixIcon: Icon(Icons.visibility),
                                hintText: 'Confirm Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadiusDirectional.circular(15.0),
                          ),
                          width: double.infinity,
                          child: MaterialButton(onPressed: (){
                            if(formKey.currentState!.validate()){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context){
                                    return Home();
                                  }));
                            }
                          },
                            child:Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 1.0,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Have an Account?',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            TextButton(onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return LoginScreen();
                                }),
                              );
                            },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent,
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}