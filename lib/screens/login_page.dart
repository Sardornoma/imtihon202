import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon202/screens/details_page.dart';
import 'package:imtihon202/screens/register_page.dart';

import '../utils/my_images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  bool isvisiblity = false;
  bool issure = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: const Center(
                                child: Icon(Icons.arrow_back),
                              ),
                            ),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13.5,
                    ),
                    const Text("Log in",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff3F414E))),
                    const SizedBox(height: 33),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 63,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            color: const Color(0xff2E50FF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset('assets/icons/facebook.svg'),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "CONTINUE WITH FACEBOOK",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 63,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(38),
                              color: const Color(0xffFFFFFF),
                              border:
                                  Border.all(width: 0.5, color: Colors.grey),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset('assets/icons/google.svg'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "CONTINUE WITH GOOGLE",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff3F414E)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text("ATAU LOG IN DENGAN EMAIL",
                        style: TextStyle(
                            color: Color(0xffA1A4B2),
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          errorStyle:
                              TextStyle(color: Colors.red, fontSize: 14),
                          hintText: "Enter your Email",
                          suffix: SvgPicture.asset(MyIcons.ic_galochka),
                          filled: true,
                          fillColor: Color(0xffF2F3F7),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: isvisiblity,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          errorStyle:
                              const TextStyle(color: Colors.red, fontSize: 14),
                          hintText: "Enter your password",
                          suffix: InkWell(
                            onTap: () {
                              setState(() {
                                isvisiblity = !isvisiblity;
                              });
                            },
                            child: isvisiblity
                                ? const Icon(
                                    Icons.visibility,
                                    color: Color(0xff3F414E),
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: Color(0xff3F414E),
                                  ),
                          ),
                          filled: true,
                          fillColor: const Color(0xffF2F3F7),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Save Password",
                            style: TextStyle(
                                color: Color(0xff7583CA),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                issure = !issure;
                              });
                            },
                            child: issure
                                ? Icon(
                                    Icons.check_box_outline_blank_outlined,
                                    color: Color(0xff3F414E),
                                  )
                                :  SvgPicture.asset(MyIcons.ic_galochka),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () async {
                          if (_formkey.currentState!.validate()) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DetailsPage()));
                          }
                        },
                        child: Column(
                          children: [
                            Container(
                            height: 63,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(38),
                              color: const Color(0xff6872EB),
                            ),
                            child: const Center(
                                child: Text(
                              "LOG IN",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                            }, child: Text(
                              'Sign Up',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.red),
                            ))
                        ]
                        ),
                      ),
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
