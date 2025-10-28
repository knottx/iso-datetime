import 'package:flutter/material.dart';
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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
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
    _dateTime = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final secondsSinceEpoch = (_dateTime.millisecondsSinceEpoch ~/ 1000)
        .toString();
    final millisecondsSinceEpoch = _dateTime.millisecondsSinceEpoch.toString();
    final microsecondsSinceEpoch = _dateTime.microsecondsSinceEpoch.toString();

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
                  title:
                      'Seconds since Epoch (${secondsSinceEpoch.length} digits):',
                  value: secondsSinceEpoch,
                ),
                _buildTile(
                  title:
                      'Milliseconds since Epoch (${millisecondsSinceEpoch.length} digits):',
                  value: millisecondsSinceEpoch,
                ),
                _buildTile(
                  title:
                      'Microseconds since Epoch (${microsecondsSinceEpoch.length} digits):',
                  value: microsecondsSinceEpoch,
                ),
                const Divider(),
                _buildTile(
                  title: 'UTC Time:',
                  value: _dateTime.toUtc().toIso8601String(),
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
                Center(
                  child: Row(
                    spacing: 16,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      OutlinedButton.icon(
                        onPressed: onTapNow,
                        label: const Text('Now'),
                        icon: const Icon(Icons.sync),
                      ),
                      FilledButton.tonalIcon(
                        onPressed: onTapEdit,
                        icon: const Icon(Icons.edit),
                        label: const Text('Select Local Date & Time'),
                      ),
                    ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const SizedBox(height: 4),
        SelectableText(
          value,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }

  void onTapEdit() async {
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

  void onTapNow() {
    setState(() {
      _dateTime = DateTime.now();
    });
  }
}
