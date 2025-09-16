import 'package:flutter/material.dart';
import 'package:plantdiseasedetection/DetectionPage.dart';
import 'package:plantdiseasedetection/SignUpPage.dart';


  //bool _isFormValid() {
  // Implement your logic here to check if username and password are not empty
  // For example:
  // return _usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty;
  //}
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
          children: [
            Stack(
              alignment: Alignment.center, // Center the stack content
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "Images/bg2.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 100,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Center the column content
                    children: [
                      usernameTextField(),
                      const SizedBox(height: 25),
                      passwordField(),
                      const SizedBox(height: 25),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            //    if (_isFormValid()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetectionPage()));
                            // } else {}
                          },
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            backgroundColor: Color(0xFFB4B792), // Background color of the button
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),

                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        child: const Text(
                          "Forget your password?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Set text color to white
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                        },
                        child: const Text(
                          "Create Your Own Account",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.underline, // Underline the text
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                        children: [
                          Container(
                            color: Colors.white,
                            width: 100,
                            height: 2,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "or Connect with",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            color: Colors.white,
                            width: 100,
                            height: 2,
                          ),
                        ],

                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width/2-20, // Set the desired width
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed logic for Facebook here
                                  print("Facebook button pressed");
                                  // Add more logic here as needed
                                },
                                style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue,
                                  ),
                                  backgroundColor: Color(0xFFB4B792),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.facebook,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Facebook",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20), // Add spacing between the buttons
                            SizedBox(
                              width: MediaQuery.of(context).size.width/2-20, // Set the desired width
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed logic for Google here
                                  print("Google button pressed");
                                  // Add more logic here as needed
                                },
                                style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue,
                                  ),
                                  backgroundColor: Color(0xFFB4B792),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "Images/g1.png",
                                      height: 25,
                                      width: 25,
                                    ),
                                    SizedBox(width: 10),
                                    const Text(
                                      "Google",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )



                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom),


          ],
        ),


      ),
    );
  }

  Container usernameTextField() {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.person_outlined,
              color: Colors.black45,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 3, bottom: 3),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }

  Container passwordField() {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.lock_open_outlined,
              color: Colors.black45,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 3, bottom: 3),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
