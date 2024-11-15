import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/screens/health_services_screen.dart';
import 'package:teste/screens/health_unit_address_screen.dart';
import 'package:teste/screens/medications_screen.dart';
import 'package:teste/screens/vaccine_appointment_screen.dart';
import 'providers/auth_provider.dart';
import 'screens/login_screen.dart';
import 'screens/user_registration_screen.dart';
import 'screens/appointment_screen.dart';
import 'screens/appointment_list_screen.dart';
import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sistema de Saúde',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => UserRegistrationScreen(),
          '/home': (context) => const HomeScreen(),
          '/appointment': (context) => AppointmentScreen(),
          '/vaccine': (context) => VaccineAppointmentScreen(),
          '/services': (context) => HealthUnitServicesScreen(),
          '/address': (context) => HealthUnitContactScreen(),
          '/medications': (context) => MedicationsScreen(),
          '/appointments_list': (context) =>
              const AppointmentListScreen(appointments: []),
        });
  }
}