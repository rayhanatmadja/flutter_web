import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({
      String? title,
      String? imageUrl,
      int? index,
    }) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedMenu = index!;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title!,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight:
                    index == selectedMenu ? FontWeight.w500 : FontWeight.w300,
                color: Color(0xff1D1E3C),
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedMenu
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      );
    }

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
                      navItem(
                        title: 'Guides',
                        index: 0,
                      ),
                      SizedBox(
                        width: 47,
                      ),
                      navItem(
                        title: 'Pricing',
                        index: 1,
                      ),
                      SizedBox(
                        width: 47,
                      ),
                      navItem(
                        title: 'Team',
                        index: 2,
                      ),
                      SizedBox(
                        width: 47,
                      ),
                      navItem(
                        title: 'Stories',
                        index: 3,
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
                width: 603,
                height: 390,
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
