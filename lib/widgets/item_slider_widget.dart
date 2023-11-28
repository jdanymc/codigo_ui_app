import 'package:codigo_ui_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14.0),
      //color: Colors.red,
      width: 160.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 12.0,
                    offset: const Offset(4, 4))
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/maps.png"),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Block C Benyamin",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.montserrat(
                    color: kColorPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Av. Lima 2332 Mz A",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.montserrat(
                    color: kColorPrimary.withOpacity(0.55),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Open",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff50bc9c),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      "4:00 - 12.00",
                      style: GoogleFonts.montserrat(
                        color: kColorPrimary.withOpacity(0.55),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
