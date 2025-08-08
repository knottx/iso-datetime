import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iso_datetime/app_theme.dart';

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
      darkTheme: const AppTheme(TextTheme()).darkMediumContrast(),
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
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final timeZoneName = _dateTime.timeZoneName;
    final timeZoneOffset = _dateTime.timeZoneOffset.inHours;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 24,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'ISO 8601 Date and Time',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),

                Center(
                  child: FilledButton(
                    onPressed: onTapSelect,
                    child: const Text('Select Date and Time'),
                  ),
                ),

                buildSelectableField(
                  title:
                      'Local: $timeZoneName (UTC${timeZoneOffset.isNegative ? '' : '+'}$timeZoneOffset)',
                  value: _dateTime.toLocal().toIso8601String(),
                ),

                buildSelectableField(
                  title: 'UTC',
                  value: _dateTime.toUtc().toIso8601String(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSelectableField({
    required String title,
    required String value,
  }) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.surfaceContainerHigh,
              ),
              padding: const EdgeInsets.fromLTRB(24, 8, 8, 8),
              child: Row(
                children: [
                  Expanded(
                    child: SelectableText(
                      value,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(
                          context,
                        ).colorScheme.tertiary,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      copyToClipboard(value);
                    },
                    icon: const Icon(
                      Icons.copy,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
            Text('Copied!'),
          ],
        ),
      ),
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
