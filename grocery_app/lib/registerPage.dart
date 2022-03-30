import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController passwordControllertwo = TextEditingController();

  bool isChecked = false;

  PageController pageController = PageController(initialPage: 0);

  //NAME USERNAME TEXTFIELDLARINDAN SONRA CHECKBOX EKLE
  // İKİNCİ SAYFAYA SIĞDIRMAKTA SORUN YAŞIYORUM

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(50, 60, 70, 1),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 60.0, left: 60, bottom: 50),
                  child: Text(
                    "New \nAccount",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: [
                      SingleChildScrollView(
                        child: usernameName(
                          nameController: nameController,
                          usernameController: usernameController,
                          buttonfuntion: () {
                            print("sayfa değiş");
                            pageController.nextPage(
                                duration: Duration(milliseconds: 1500),
                                curve: Curves.easeInOutQuad);
                          },
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: Text(
                                "E-MAIL",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            InputField(
                              controller: emailController,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: Text(
                                "PASSWORD",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            InputField(
                              controller: passWordController,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: Text(
                                "PASSWORD AGAIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            InputField(
                              controller: passwordControllertwo,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 6,
                                    primary: Colors.deepOrange,
                                    fixedSize: Size(260, 55),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(
                effect: SlideEffect(
                    spacing: 10.0,
                    radius: 2.0,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.deepOrange),
                controller: pageController,
                count: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class usernameName extends StatelessWidget {
  const usernameName({
    Key key,
    @required this.nameController,
    @required this.usernameController,
    @required this.buttonfuntion,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController usernameController;
  final Function buttonfuntion;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Text(
            "NAME",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        InputField(
          controller: nameController,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Text(
            "USERNAME",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        InputField(
          controller: usernameController,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 20),
          child: Center(
            child: ElevatedButton(
              onPressed: buttonfuntion,
              child: Text(
                'Next',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
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
      ],
    );
  }
}

class InputField extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  InputField({this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, right: 60, left: 60, bottom: 25),
      child: TextField(
        style: TextStyle(color: Colors.deepOrange),
        controller: controller,
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
        ),
      ),
    );
  }
}
