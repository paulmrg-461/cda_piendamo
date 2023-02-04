import 'package:cda_piendamo/ui/shared/custom_input.dart';
import 'package:cda_piendamo/ui/themes/custom_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicleFormScreen extends StatefulWidget {
  const VehicleFormScreen({super.key});

  @override
  State<VehicleFormScreen> createState() => _VehicleFormScreenState();
}

class _VehicleFormScreenState extends State<VehicleFormScreen> {
  final TextEditingController placaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomLightTheme.secondaryColor,
          title: Text(
            'CDA Piendamó',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Datos del vehículo',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    color: CustomLightTheme.primaryFontColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 24),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Divider(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomInput(
                    hintText: 'Placa',
                    textController: placaController,
                    textCapitalization: TextCapitalization.characters,
                    width: size.width * 0.15,
                  ),
                  CustomInput(
                    hintText: 'Modelo',
                    textController: placaController,
                    textCapitalization: TextCapitalization.characters,
                    width: size.width * 0.375,
                  ),
                  CustomInput(
                    hintText: 'Color',
                    textController: placaController,
                    textCapitalization: TextCapitalization.characters,
                    width: size.width * 0.375,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
