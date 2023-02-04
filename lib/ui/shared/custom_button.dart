import 'package:cda_piendamo/ui/themes/custom_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? width;
  final double? borderRadius;
  final double buttonElevation;
  final double internalHorizontalPadding;
  final double internalVerticalPadding;
  const CustomButton(
      {Key? key,
      this.icon,
      required this.text,
      required this.onPressed,
      this.width,
      this.fontSize = 16,
      this.fontColor = CustomLightTheme.primaryFontColor,
      this.fontWeight = FontWeight.w700,
      this.backgroundColor = CustomLightTheme.primaryColor,
      this.borderRadius = 8,
      this.borderColor = CustomLightTheme.primaryColor,
      this.buttonElevation = 0,
      this.internalHorizontalPadding = 16,
      this.internalVerticalPadding = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 6),
      width: width,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius!),
                      side: BorderSide(color: borderColor!))),
              elevation: MaterialStateProperty.all(buttonElevation)),
          onPressed: onPressed,
          child: (icon == null)
              ? Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: internalVerticalPadding,
                      horizontal: internalHorizontalPadding),
                  child: Text(text,
                      style: GoogleFonts.inter(
                          fontSize: fontSize!,
                          color: fontColor!,
                          fontWeight: fontWeight!)),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: internalVerticalPadding,
                      horizontal: internalHorizontalPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: fontColor,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        text,
                        style: GoogleFonts.inter(
                            fontSize: fontSize!,
                            color: fontColor!,
                            fontWeight: fontWeight!),
                      ),
                    ],
                  ),
                )),
    );
  }
}
