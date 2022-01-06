import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/bg.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 30,
          ),
          child: Column(
            children: [
              // NOTE : Navigation Bar

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 72,
                    height: 40,
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Guides',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1D1E3C),
                            ),
                          ),
                          Container(
                            width: 66,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffFE998D),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 47,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Pricing',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff1D1E3C),
                            ),
                          ),
                          Container(
                            width: 66,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 47,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Team',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff1D1E3C),
                            ),
                          ),
                          Container(
                            width: 66,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 47,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Stories',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff1D1E3C),
                            ),
                          ),
                          Container(
                            width: 66,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    padding: EdgeInsets.symmetric(
                      horizontal: 27,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff1D1E3C),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'My Account',
                          style: GoogleFonts.poppins(
                            color: Color(0xffFFFFFF),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 90,
              ),

              // NOTE: COntent

              Image.asset(
                'assets/images/cycle.png',
                width: 763,
                height: 550,
              ),
              // NOTE: Footer
              SizedBox(
                height: 85,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Icon_down_solid.png',
                    width: 24,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Scroll to learn more',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1D1E3C),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
