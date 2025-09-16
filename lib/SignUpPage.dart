import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
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
                left: MediaQuery.of(context).size.width / 2 - 58,
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: MediaQuery.of(context).size.width / 2 - 150,
                child: Column(
                  children: [
                    usernameTextField(),
                    const SizedBox(height: 25),
                    emailField(),
                    const SizedBox(height: 25),
                    passwordField(),
                    const SizedBox(height: 25),
                    confirmPasswordField(),
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
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          backgroundColor: Color(0xFFB4B792), // Background color of the button
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
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
                hintText: "Username",
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
        ),
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
Container confirmPasswordField() {
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
            Icons.check_circle_outline,
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
Container emailField() {
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
            Icons.email_outlined,
            color: Colors.black45,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 3, bottom: 3),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.black45),
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
        ),
      ],
    ),
  );
}
