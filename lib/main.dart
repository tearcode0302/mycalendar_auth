import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mycalendar_auth/provider/schedule_provider.dart';
import 'package:mycalendar_auth/repository/schedule_repository.dart';
import 'package:mycalendar_auth/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  final scheduleRepository = ScheduleRepository();
  final scheduleProvider = ScheduleProvider(scheduleRepository: scheduleRepository);

  runApp(
    ChangeNotifierProvider(
      create: (_) => scheduleProvider,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    ),
  );
}
