import 'package:cda_piendamo/ui/themes/custom_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInput extends StatefulWidget {
  final String? hintText;
  final TextEditingController? textController;
  final IconData? icon;
  final bool passwordVisibility;
  final TextInputType textInputType;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final bool enabledInputInteraction;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? fontColor;
  final int? minLines;
  final int? maxLines;
  final bool? expands;
  final double? width;
  final double marginBottom;

  const CustomInput({
    Key? key,
    @required this.hintText,
    @required this.textController,
    this.icon,
    this.passwordVisibility = false,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.enabledInputInteraction = true,
    this.textCapitalization = TextCapitalization.none,
    this.borderRadius = 8,
    this.backgroundColor = Colors.transparent,
    this.borderColor = CustomLightTheme.secondaryColor,
    this.fontColor = CustomLightTheme.primaryFontColor,
    this.minLines = 1,
    this.maxLines = 1,
    this.expands = false,
    this.width,
    this.marginBottom = 16,
  }) : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool passwordObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        margin: EdgeInsets.only(bottom: widget.marginBottom),
        //padding: EdgeInsets.only(top: 6, left: 6, right: 18),
        decoration: BoxDecoration(
          color: widget.backgroundColor!,
          borderRadius: BorderRadius.circular(widget.borderRadius!),
        ),
        child: TextField(
          minLines: widget.minLines!,
          maxLines: widget.maxLines!,
          expands: widget.expands!,
          style: GoogleFonts.inter(
              color: widget.fontColor!,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          controller: widget.textController,
          autocorrect: false,
          keyboardType: widget.textInputType,
          obscureText: (widget.obscureText && passwordObscure) ? true : false,
          enabled: widget.enabledInputInteraction,
          textCapitalization: widget.textCapitalization,
          decoration: InputDecoration(
              isCollapsed: true,
              prefixIcon: widget.icon == null
                  ? null
                  : Icon(
                      widget.icon,
                      color: widget.borderColor,
                    ),
              suffixIcon: widget.passwordVisibility
                  ? IconButton(
                      color: CustomLightTheme.secundaryFontColor,
                      icon: Icon(passwordObscure
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () => setState(() {
                        passwordObscure = !passwordObscure;
                      }),
                    )
                  : null,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius!),
                borderSide: BorderSide(color: widget.borderColor!, width: 1.2),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius!),
                borderSide: const BorderSide(
                    color: CustomLightTheme.secondaryBorderColor, width: 0.75),
              ),
              //hintText: this.hintText,
              labelText: widget.hintText,
              labelStyle: TextStyle(color: widget.fontColor!)),
        ));
  }
}
