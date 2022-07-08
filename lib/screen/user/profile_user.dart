// ignore_for_file: unnecessary_const

import 'dart:convert';

import 'package:capstone_project/screen/auth/login_page.dart';
import 'package:capstone_project/screen/user/profile_model.dart';
import 'package:capstone_project/screen/user/test.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  // Future<User> fetchUser() async {
  //   final response =
  //       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  //   if (response.statusCode == 200) {
  //     print('ada');
  //     return User.fromJson(jsonDecode(response.body));
  //   } else {
  //     print('gada');
  //     throw Exception('Failed to load album');
  //   }
  // }

  // late Future<User> futureUser;

  // @override
  // void initState() {
  //   super.initState();
  //   futureUser = fetchUser();
  // }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      color: Colors.white,
                      transformAlignment: Alignment.center,
                      child: Stack(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 100, 18, 0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Akun',
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    border: const Border(
                                      bottom: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Text('Muhammad Pandu',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    border: const Border(
                                      bottom: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ListTile(
                                  title: Text('Pertanyaan Umum'),
                                  trailing: Icon(Icons.arrow_forward_outlined),
                                ),
                                ListTile(
                                  onTap: () => (Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Testing(),
                                      ))),
                                  title: Text('Tentang I-Vaksin'),
                                  trailing: Icon(Icons.arrow_forward_outlined),
                                ),
                                ListTile(
                                  title: Text('Beri Penilaian Aplikasi'),
                                  trailing: Icon(Icons.arrow_forward_outlined),
                                ),
                                ListTile(
                                  title: Text('Bahasa'),
                                  trailing: Icon(Icons.arrow_forward_outlined),
                                ),
                                ListTile(
                                    title: Text('Logout'),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginScreen(),
                                        ),
                                      );
                                    }),
                              ]),
                        )
                      ]))
                ])));
  }
}
