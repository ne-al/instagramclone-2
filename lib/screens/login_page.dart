import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/nav_bar.dart';
import 'package:flutter_application_1/screens/register_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/login1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 60,
                left: 10,
              ),
              child: Text(
                'Welcome\nBack',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.47,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Enter your email',
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: GoogleFonts.lato(
                            color: Colors.cyan,
                          ),
                          labelStyle: GoogleFonts.lato(
                            color: Colors.cyan,
                          ),
                        ),
                        style: GoogleFonts.lato(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Enter your password',
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: GoogleFonts.lato(
                            color: Colors.cyan,
                          ),
                          labelStyle: GoogleFonts.lato(
                            color: Colors.cyan,
                          ),
                        ),
                        style: GoogleFonts.lato(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign In',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward_ios),
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => const NavBarPage(),
                                  ),
                                  (route) => false);
                            },
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ),
                                (route) => false);
                          },
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: GoogleFonts.lato(
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
