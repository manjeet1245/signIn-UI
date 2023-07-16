import 'package:brewcafe/components/formfill.dart';
import 'package:brewcafe/components/mybutton.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {
    print("User clicked on sign in button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(
                height: 50,
              ),
              formInput(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              formInput(
                controller: passwordController,
                hintText: "password",
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password"),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: signIn,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or continue with"),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey[200],
                    ),
                    child: Image.network(
                      "https://img.freepik.com/free-icon/mac-os_318-10374.jpg",
                      height: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey[200],
                    ),
                    child: Image.network(
                      "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
                      height: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Register now",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
