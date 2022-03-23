import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color deepOrange = Colors.deepOrange;
Color black = Colors.black;
Color white = Colors.white;
Color grey = Colors.grey;
Color blue = Color(0xFF92d6f3);
Color greentheme = Color(0xFF028103);
//const Color theme = Color(0xFF92d6f3);

// methods
void changeScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void changeScreenReplacement(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => widget));
}

TextStyle light = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
  ),
);

TextStyle lightWhiteSmall = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  ),
);

TextStyle lightGreen = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Color(0xFF028103),
    fontWeight: FontWeight.normal,
    fontSize: 16,
  ),
);

TextStyle lightBlack = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  ),
);
TextStyle lightBlackSmall = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  ),
);

TextStyle lightBlackSmallMedium = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  ),
);

TextStyle lightBlackExtraSmall = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 10,
  ),
);

TextStyle bold = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  ),
);
TextStyle boldBlack = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  ),
);
TextStyle boldBlackMedium = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  ),
);

TextStyle boldBlackSmall = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  ),
);

TextStyle boldGreen = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: greentheme,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  ),
);

TextStyle boldGreenMedium = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: greentheme,
    fontWeight: FontWeight.bold,
    fontSize: 26,
  ),
);
TextStyle boldGreenExtraSmall = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: greentheme,
    fontWeight: FontWeight.bold,
    fontSize: 13,
  ),
);

class TextStyleGoogle extends StatelessWidget {
  final String textTitle;
  final FontWeight _fontWeight;
  final double fontSizeText;
  const TextStyleGoogle(this.textTitle, this.fontSizeText, this._fontWeight);

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      style: GoogleFonts.nunito(
          fontSize: fontSizeText,
          color: Theme.of(context).iconTheme.color,
          fontWeight: _fontWeight),
    );
  }
}

class TextStyleGoogleNormal extends StatelessWidget {
  final String textTitle;
  final FontWeight _fontWeight;
  final double fontSizeText;
  final Color color;
  const TextStyleGoogleNormal(
      this.textTitle, this.fontSizeText, this._fontWeight, this.color);

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      style: GoogleFonts.nunito(
          fontSize: fontSizeText, color: color, fontWeight: _fontWeight),
    );
  }
}
