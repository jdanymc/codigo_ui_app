import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //height: 300,
                width: double.infinity,
                // color: Colors.blue,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff0a494e),
                      Color(0xff05172A),
                    ],
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Parkirin",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "24 °C",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                            const SizedBox(
                              width: 6.0,
                            ),
                            Image.asset(
                              'assets/images/cloudy.png',
                              height: 24,
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25.0),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: Text(
                        "Let's fins a place for you",
                        style: GoogleFonts.montserrat(
                          fontSize: 36.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Find parking place",
                                hintStyle: GoogleFonts.montserrat(
                                  color: Colors.black38,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black38,
                                  size: 20.0,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide.none),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        SizedBox(
                          width: 14.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(0xffFFB404),
                              borderRadius: BorderRadius.circular(12.0)),
                          child: Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}