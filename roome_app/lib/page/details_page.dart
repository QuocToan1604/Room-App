import 'package:flutter/material.dart';
import 'package:roome_app/page/login_page.dart';

class Details_Page extends StatefulWidget {
  const Details_Page({super.key});

  @override
  State<Details_Page> createState() => _Details_PageState();
}

class _Details_PageState extends State<Details_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            // const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5),
                      Text(
                        'Quoc Toan',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'MajoraBold',
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(0),
                        ),
                        child: Text(
                          'View and edit profile',
                          style: TextStyle(color: Colors.grey, height: 1.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Change Password',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            // fontFamily: 'Majoraw500',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Icon(Icons.lock, color: Colors.grey),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Divider(
              color: Color.fromARGB(255, 218, 218, 218),
              thickness: 1.0,
              indent: 0.0,
              endIndent: 5.0,
            ),
            const SizedBox(height: 7),

            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Invite Friends',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              // fontFamily: 'MajoraBold',
                              fontSize: 15))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [Icon(Icons.people, color: Colors.grey)],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Divider(
              color: Color.fromARGB(255, 218, 218, 218),
              thickness: 1.0,
              indent: 0.0,
              endIndent: 10.0,
            ),
            const SizedBox(height: 7),

            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Credits & Coupons',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              // fontFamily: 'MajoraBold',
                              fontSize: 15))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [Icon(Icons.card_giftcard, color: Colors.grey)],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Divider(
              color: Color.fromARGB(255, 218, 218, 218),
              thickness: 1.0,
              indent: 0.0,
              endIndent: 10.0,
            ),
            const SizedBox(height: 7),

            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Help Center',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              // fontFamily: 'MajoraBold',
                              fontSize: 15))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [Icon(Icons.help_sharp, color: Colors.grey)],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Divider(
              color: Color.fromARGB(255, 218, 218, 218),
              thickness: 1.0,
              indent: 0.0,
              endIndent: 10.0,
            ),
            const SizedBox(height: 7),

            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payments',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              // fontFamily: 'MajoraW500',
                              fontSize: 15))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [Icon(Icons.payment_sharp, color: Colors.grey)],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Divider(
              color: Color.fromARGB(255, 218, 218, 218),
              thickness: 1.0,
              indent: 0.0,
              endIndent: 10.0,
            ),
            const SizedBox(height: 7),

            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Settings',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              // fontFamily: 'MajoraW500',
                              fontSize: 15))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [Icon(Icons.settings, color: Colors.grey)],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Divider(
              color: Color.fromARGB(255, 218, 218, 218),
              thickness: 1.0,
              indent: 0.0,
              endIndent: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              style: TextButton.styleFrom(primary: Colors.black),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Logout',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                // fontFamily: 'MajoraBold',
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [Icon(Icons.logout, color: Colors.grey)],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 218, 218, 218),
              thickness: 1.0,
              indent: 0.0,
              endIndent: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
