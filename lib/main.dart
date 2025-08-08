import 'package:flutter/material.dart';
import 'package:iso_datetime/app_theme.dart';
import 'package:iso_datetime/date_time_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ISO 8601 Date and time format',
      themeMode: ThemeMode.dark,
      theme: const AppTheme(TextTheme()).light(),
      darkTheme: const AppTheme(TextTheme()).dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DateTime _dateTime;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _dateTime = DateTime(
      now.year,
      now.month,
      now.day,
      now.hour,
      now.minute,
      now.second,
    );
  }

  @override
  Widget build(BuildContext context) {
    final timeZoneName = _dateTime.timeZoneName;
    final timeZoneOffsetSuffix = _dateTime.timeZoneOffsetSuffix();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'ISO 8601 Date and Time',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                _buildTile(
                  title: 'Local TimeZone:',
                  value: '$timeZoneName (UTC$timeZoneOffsetSuffix)',
                ),
                _buildTile(
                  title: 'Local Time:',
                  value: _dateTime.toLocal().toIso8601StringWithOffset(),
                ),
                _buildTile(
                  title: 'UTC Time:',
                  value: _dateTime.toUtc().toIso8601String(),
                ),
                _buildTile(
                  title: 'Seconds since Epoch:',
                  value: (_dateTime.millisecondsSinceEpoch / 1000).toString(),
                ),
                Center(
                  child: FilledButton(
                    onPressed: onTapSelect,
                    child: const Text('Select Date and Time'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTile({
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const SizedBox(width: 8),
        SelectableText(
          value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
      ],
    );
  }

  void onTapSelect() async {
    final now = DateTime.now();
    final dateResult = await showDatePicker(
      context: context,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDate: _dateTime,
      firstDate: DateTime(1970),
      lastDate: DateTime(now.year + 100),
    );

    if (dateResult != null && mounted) {
      final timeResult = await showTimePicker(
        context: context,
        initialEntryMode: TimePickerEntryMode.dialOnly,
        initialTime: TimeOfDay.fromDateTime(_dateTime),
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: child!,
          );
        },
      );
      if (timeResult != null) {
        setState(() {
          _dateTime = DateTime(
            dateResult.year,
            dateResult.month,
            dateResult.day,
            timeResult.hour,
            timeResult.minute,
          );
        });
      }
    }
  }
}
