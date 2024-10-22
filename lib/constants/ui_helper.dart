import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static Color primaryColor = const Color(0xfff1d2b1);
  static Color secondaryColor = Colors.white;
  static Color backgroundColor = const Color(0xff0B0917);
}

final TextTheme textTheme = TextTheme(
  titleLarge: GoogleFonts.poppins(
    fontSize: 42,
    color: AppColors.secondaryColor,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  ),
  titleMedium: GoogleFonts.poppins(
    fontSize: 32,
    color: AppColors.secondaryColor,
    fontWeight: FontWeight.bold,
  ),
  labelMedium: GoogleFonts.poppins(
    fontSize: 28,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  ),
  displayMedium: GoogleFonts.poppins(
    fontSize: 20,
    color: AppColors.secondaryColor,
  ),
);

final TextButtonThemeData textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll(
      GoogleFonts.poppins(
        fontSize: 18,
        color: AppColors.secondaryColor,
      ),
    ),
    overlayColor: const WidgetStatePropertyAll(
      Colors.transparent,
    ),
  ),
);

Widget fancyContainer(
    {required final Size size,
    required final Widget child,
    final double? maxWidth}) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: maxWidth ?? 0.0,
    ),
    padding: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: 60),
    margin: size.width < 1300
        ? EdgeInsets.symmetric(
            horizontal: size.width * .05, vertical: size.width * .05)
        : EdgeInsets.zero,
    decoration: BoxDecoration(
      color: AppColors.backgroundColor,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(.1),
          offset: const Offset(0, 0),
          blurRadius: 20,
          spreadRadius: 2,
        )
      ],
    ),
    child: child,
  );
}

List<InlineSpan> getDescription(
    final String description, BuildContext context) {
  List<String> descriptions = description.split('\n');
  List<InlineSpan> parsedDescription = [];

  for (final String text in descriptions) {
    parsedDescription.add(
      WidgetSpan(
        child: Builder(builder: (context) {
          List<String> parsedText = text.split('^');

          if (parsedText.length > 1) {
            List<TextSpan> textSpans = [];
            for (final String textToParse in parsedText) {
              if (textToParse.startsWith('b1')) {
                final String tmpText = textToParse.replaceAll('b1', '');
                textSpans.add(
                  TextSpan(
                    text: tmpText,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                );
              } else if (textToParse.startsWith('b2')) {
                final String tmpText = textToParse.replaceAll('b2', '');
                textSpans.add(
                  TextSpan(
                    text: tmpText,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                );
              } else {
                textSpans.add(
                  TextSpan(
                      text: textToParse,
                      style: Theme.of(context).textTheme.displayMedium!),
                );
              }
            }
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: RichText(text: TextSpan(children: textSpans)),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child:
                  Text(text, style: Theme.of(context).textTheme.displayMedium!),
            );
          }
        }),
      ),
    );
  }

  return parsedDescription;
}
