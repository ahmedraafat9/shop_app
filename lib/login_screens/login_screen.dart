import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/login_screens/signup_screen.dart';
import 'package:shop_app/shop_home/components/Home.dart';
import 'components/components.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var username=TextEditingController();
  var password=TextEditingController();
  var formKey= GlobalKey<FormState>();
  bool isPassword = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Form(
              key:formKey,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 20.0,
                    left: 20.0,
                    right: 20.0
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        'https://us.123rf.com/450wm/tuktukdesign/tuktukdesign1606/tuktukdesign160600102/59070119-user-icon-man-profile-businessman-avatar-person-icon-in-vector-illustration.jpg?ver=6',
                      ),
                    ),
                    Text  (
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.blue.shade500,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      controller: username,
                      onFieldSubmitted: (value){},
                      keyboardType: TextInputType.text,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username must not be empty";
                        }
                        return null;
                      },
                      decoration:InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Username',
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ) ,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultFormField(
                        controller: password,
                        label: 'Password',
                        hint: 'password',
                        suffix: isPassword ? Icons.visibility_off : Icons.visibility,
                        isPassword : isPassword,
                        suffixPressed: (){
                          setState(() {
                            isPassword= !isPassword;
                          });
                        },
                        prefix: Icons.lock,
                        type: TextInputType.visiblePassword,
                        obscureText: true,
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Password must not be empty';
                          }
                          else if(value.length < 6){
                            return 'Minimum password is 6 characters';
                          }
                          return null;
                        }),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot password?',
                          style: TextStyle(
                              fontSize: 15.0
                          ),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return ForgotPassword();
                              })
                          );
                        },
                            child: Text(
                              'Click here',
                              style: TextStyle(
                                  fontSize: 18.0
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadiusDirectional.circular(10.0)
                      ),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: (){
                          if(formKey.currentState!.validate()){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return Home();
                                })
                            );
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 140.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      color: Colors.grey[600],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        MaterialButton(
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return SignupScreen();
                              },
                              ),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: 20.0
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}