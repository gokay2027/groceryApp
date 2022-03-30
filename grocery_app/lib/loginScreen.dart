import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(50, 60, 70, 1)),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0, left: 60),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 25.0, left: 60, right: 60),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrange),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrange),
                        ),
                        hintText: "E-Mail",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 25.0, left: 60, right: 60),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrange),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrange),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white54,
                            ),
                            onPressed: () {
                              print("şifreyi gizle-göster");
                            }),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 20),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "mainpage");
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 6,
                          primary: Colors.black54,
                          fixedSize: Size(260, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "First time here?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {
                          print("sign up page");
                          Navigator.pushNamed(context, "signuppage");
                        },
                        child: Text(
                          "Sign up",
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 15),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
