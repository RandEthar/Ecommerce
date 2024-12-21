import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountdownTimer extends StatefulWidget {
  final Duration duration; // المدة الأصلية للعد التنازلي

  const CountdownTimer({Key? key, required this.duration}) : super(key: key);

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> with WidgetsBindingObserver {
  late Duration remainingTime;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    remainingTime = widget.duration; // تهيئة remainingTime بالقيمة الافتراضية.
    _loadTime(); // تحميل الوقت المتبقي عند بداية التطبيق
    WidgetsBinding.instance?.addObserver(this); // مراقبة حالة التطبيق
  }

  @override
  void dispose() {
    timer.cancel();
    WidgetsBinding.instance?.removeObserver(this); // إيقاف المراقبة عند الخروج
    super.dispose();
  }

  // تحميل الوقت المتبقي من SharedPreferences
  Future<void> _loadTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? savedTime = prefs.getInt('remainingTime');
    if (savedTime != null) {
      // إذا كان هناك وقت محفوظ، نستخدمه
      setState(() {
        remainingTime = Duration(seconds: savedTime);
      });
    }
    startTimer(); // بدء العد التنازلي بعد تحميل الوقت
  }

  // بدء العد التنازلي
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) async {
      if (remainingTime.inSeconds <= 0) {
        timer.cancel();
      } else {
        setState(() {
          remainingTime -= const Duration(seconds: 1); // تقليل الوقت المتبقي
        });

        // حفظ الوقت المتبقي في SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setInt('remainingTime', remainingTime.inSeconds);
      }
    });
  }

  // تنسيق الوقت بشكل مناسب
  String formatTime(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;

    return '${hours}h ${minutes}m ${seconds}s';
  }

  // هذه الطريقة تُستدعى عندما يعود التطبيق إلى الواجهة
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // عند العودة للتطبيق، نعيد تحميل الوقت
      _loadTime();
    }
  }

  @override
  Widget build(BuildContext context) {
    // التأكد من أن الوقت تم تحميله بشكل صحيح قبل أن نعرضه في واجهة المستخدم
    return remainingTime.inSeconds > 0
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                formatTime(remainingTime),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const Text(
                ' remaining',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        : const Text(
            'Deal Expired',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          );
  }
}





