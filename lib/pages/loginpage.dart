import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              Column(
                children: [
                  Image.asset(
                    'lib/images/attendencelo.png',
                    height: 150,
                    width: 150,
                  ),
                ],
              ),

              const SizedBox(height: 50),

              Text(
                'Attendence Management System ',
                style: TextStyle(
                    color: Colors.orange[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              // // username textfield
              // MyTextField(
              //   controller: usernameController,
              //   hintText: 'Username',
              //   obscureText: false,
              // ),

              // const SizedBox(height: 10),

              // // password textfield
              // MyTextField(
              //   controller: passwordController,
              //   hintText: 'Password',
              //   obscureText: true,
              // ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.orange[900]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              // MyButton(
              //   onTap: signUserIn,
              //   color: Colors.blue,
              // ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 68, 0),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 200,
                child: TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
