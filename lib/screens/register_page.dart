import 'package:imtihon202/screens/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon202/utils/my_images.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
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
                  const Text("Create your account",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3F414E))),
                  const SizedBox(height: 33),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                              height: 10,
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
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 63,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38),
                        color: const Color(0xffFFFFFF),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/icons/google.svg'),
                            const Text(
                              "CONTINUE WITH FACEBOOK",
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
                  const SizedBox(height: 20),
                  const Text("ATAU LOG IN DENGAN EMAIL",
                      style: TextStyle(
                          color: Color(0xffA1A4B2),
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Username";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color: Colors.red, fontSize: 14),
                        hintText: "Enter your Username",
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
                      obscureText: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color: Colors.red, fontSize: 14),
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
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "i have read the ",
                          style: TextStyle(
                              color: Color(0xffA1A4B2),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Privace Policy",
                          style: TextStyle(
                              color: Color(0xff7583CA),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 50,),
                        InkWell(
                          onTap: () {
                            setState(() {
                              issure =! issure;
                            });
                          },
                          child: issure
                              ? SvgPicture.asset(MyIcons.ic_galochka) :
                          Icon(
                            Icons.check_box_outline_blank_outlined,
                            color: Color(0xff3F414E),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: () async {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailsPage()));
                        }
                      },
                      child: Container(
                        height: 63,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38),
                          color: const Color(0xff6872EB),
                        ),
                        child: const Center(
                            child: Text(
                          "GET STARTED",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
