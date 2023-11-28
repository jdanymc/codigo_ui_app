import 'package:codigo_ui_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemHistoryWidget extends StatelessWidget {
  const ItemHistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(5, 5),
              blurRadius: 12.0,
            )
          ]),
      child: Row(
        children: [
          Image.asset(
            "assets/images/car.png",
            width: 54,
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Blok A Sarimi",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    color: kColorPrimary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Av Lima 3232",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      color: kColorPrimary.withOpacity((0.55)),
                      fontSize: 12.0),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "05, Sep 2022",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    color: kColorPrimary.withOpacity((0.55)),
                    fontSize: 12.0),
              ),
              Text(
                "\$20.00",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff50bc9c),
                    fontSize: 14.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
