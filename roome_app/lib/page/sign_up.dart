import 'package:flutter/material.dart';
import 'package:roome_app/components/custom_button.dart';
import 'package:roome_app/components/custom_text_field.dart';
import 'package:roome_app/page/log_and_reg.dart';
import 'package:roome_app/page/login_page.dart';
import 'package:roome_app/page/splash_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF6F6F6),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginAndRegister(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'MajoraBold',
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 13),
                              primary: Color(0xFF1178F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/logo_face.png'),
                                  height: 30,
                                ),
                                Text(
                                  'Facebook',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13),
                              primary: Color(0xFF00ADEF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/images/logo_twitter.png'),
                                  height: 30,
                                ),
                                Text(
                                  'Twitter',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      constraints: BoxConstraints(maxWidth: 400),
                      child: Column(
                        children: [
                          Text(
                            'or sign up with email',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          CustomTextField(
                            controller: firstNameController,
                            hintText: 'First Name',
                            obscureText: false,
                          ),
                          const SizedBox(height: 10),
                          CustomTextField(
                            controller: lastNameController,
                            hintText: 'Last Name',
                            obscureText: false,
                          ),
                          const SizedBox(height: 10),
                          CustomTextField(
                            controller: userController,
                            hintText: 'Your Email',
                            obscureText: false,
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: passController,
                            obscureText: _isObscured,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscured = !_isObscured;
                                  });
                                },
                                icon: Icon(
                                  _isObscured
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    CustomButton(onPressed: () {}, text: 'Sign Up'),
                    const SizedBox(height: 15),

                    Center(
                      child: Text(
                        'By signing up, you agreed with our Term of\nServices and Privacy Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    // const SizedBox(height: 120),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Color(0xFF57D2C1)),
                  ),
                ),
              ],
            ),
          ),
        ],
        
      ),
    );
  }
}
