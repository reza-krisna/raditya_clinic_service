import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {

  var emailField = TextEditingController();
  var passField = TextEditingController();
  FocusNode emailFocusNode;
  FocusNode passFocusNode;
  //FocusScopeNode emailFocusScope = FocusScope.of(context);

  @override
  void initState() {
    emailFocusNode = FocusNode();
    passFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    emailFocusNode.dispose();
    passFocusNode.dispose();
    super.dispose();
  }

  void _requestFocus(){
    setState(() {
      FocusScope.of(context).requestFocus(emailFocusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          // Apps Background
          Scaffold(
            body: Container(
              color: Color.fromRGBO(241, 249, 255, 1.0),
              //padding: EdgeInsets.fromLTRB(24.0, 100, 24.0, 0.0),
              /*child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 295,
                    padding: EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 0.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SIGN IN',
                              style: TextStyle(
                                  color: Color.fromRGBO(38, 153, 251, 1.0),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),*/
            ),
          ),

          // App Scaffold with transparent header
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Row(
                children: [
                  Container(
                    height: 24,
                    margin: EdgeInsets.only(right: 8.0),
                    child: Image(image: AssetImage('assets/images/logo.png')),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Klinik Raditya',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  )
                ],
              ),
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Container(
                //color: Color.fromRGBO(241, 249, 255, 1.0),
                padding: EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Sign In Form
                    Container(
                      height: 295,
                      padding: EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 0.0),
                      margin: EdgeInsets.only(bottom: 48.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Title
                          Container(
                            margin: EdgeInsets.only(bottom: 32.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                      color: Color.fromRGBO(38, 153, 251, 1.0),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            ),
                          ),

                          // Input Text
                          Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    labelStyle: TextStyle(
                                      color: emailFocusNode.hasFocus? Colors.black:Colors.black54
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black
                                      )
                                    )
                                  ),
                                  controller: emailField,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                  ),
                                  controller: passField,
                                )
                              ]
                            )
                          ),

                          // Forgot Password button
                          Container(
                            //color: Colors.red,
                            alignment: Alignment.centerRight,
                              child: FlatButton(
                                  onPressed: (){

                                  },
                                  textColor: Color.fromRGBO(38, 153, 251, 1.0),
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      //color: Color.fromRGBO(38, 153, 251, 1.0),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    ),
                                  ),
                                  padding: EdgeInsets.all(0.0),
                              )
                          )
                        ]
                      ),
                    ),

                    // Sign In button
                    Container(
                      margin: EdgeInsets.only(bottom: 40.0),
                      child: SizedBox(
                        //color: Colors.red,
                        //alignment: Alignment.centerRight,
                          width: double.infinity,
                          height: 48,
                          child: FlatButton(
                            onPressed: (){
                              Map<String, dynamic> signIn = {"email":emailField.text, "pass":passField.text};
                              print(signIn);
                            },
                            color: Color.fromRGBO(38, 153, 251, 1.0),
                            textColor: Colors.white,
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                //color: Color.fromRGBO(38, 153, 251, 1.0),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0
                              ),
                            ),
                            padding: EdgeInsets.all(0.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4.0))
                            ),
                          )
                      ),
                    ),

                    // Sign Up button
                    GestureDetector(
                      onTap: (){
                        print('sign up');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              fontSize: 15.0
                            ),
                          ),
                          Text(
                            ' Sign Up',
                            style: TextStyle(
                              color: Color.fromRGBO(38, 153, 251, 1.0),
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}