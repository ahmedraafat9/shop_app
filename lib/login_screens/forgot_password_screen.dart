import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var phoneNoOREmail = TextEditingController();
  var password = TextEditingController();
  var confirmPassword = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 25.0,
          title: Text(
            'New Password',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight:FontWeight.w700,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_back,
              )),
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              height: 240,
              width: double.infinity,
              child: Image.network(
                'https://c8.alamy.com/zooms/9/b717cd4e3ade49de87479df08bd7f11f/2c3cp4e.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 205,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(45.0),
                      topLeft: Radius.circular(45.0),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 45.0,
                    bottom: 20.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Text(
                            'Create New Password',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Phone No/Email',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
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
                              Text(
                                'Password',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              TextFormField(
                                controller: password,
                                onFieldSubmitted: (value) {},
                                keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Password ";
                                  } else if (value.length < 6) {
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
                              Text(
                                'Confirm Password',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                controller: confirmPassword,
                                onFieldSubmitted: (value) {},
                                keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Re-enter Password";
                                  } else if (value != password.text) {
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
                            height: 35.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                              BorderRadiusDirectional.circular(15.0),
                            ),
                            width: double.infinity,
                            child: MaterialButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                 Navigator.pop(context);
                                }
                              },
                              child: Text(
                                'Reset Password',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
