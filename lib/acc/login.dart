import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: user,
                textAlign: TextAlign.justify,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.person_rounded,
                      color: Colors.blue,
                    ),
                  ),
                  hintText: 'Username/Email',
                  hintFadeDuration: Duration(milliseconds: 500),
                ),
              ),
              const SizedBox(
                width: 0,
                height: 12,
              ),
              TextField(
                controller: password,
                textAlign: TextAlign.justify,
                style: const TextStyle(height: 1.5),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.0, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.password_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    hintText: 'Password',
                    hintFadeDuration: Duration(milliseconds: 500)),
                obscureText: true,
              ),
              const SizedBox(height: 15,),
              TextButton(
                onPressed: (() {}),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 12),
                  child: Text('Sign In', style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
