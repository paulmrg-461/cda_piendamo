import 'package:cda_piendamo/ui/screens/vehicle_form/vehicle_form_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = '/vehicle-form';
  static Map<String, Widget Function(BuildContext)> routes = {
    '/vehicle-form': (BuildContext context) => const VehicleFormScreen(),
  };
}
