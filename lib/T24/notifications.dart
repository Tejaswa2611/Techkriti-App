// ignore_for_file: use_build_context_synchronously

import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:techkriti/T24/screens/landing.dart';
// import 'package:provider/provider.dart';
import 'package:techkriti/TOSC/hiddendrawers/hidden_dr_homescreen.dart';

// import '../Screens/notification_screen.dart';

class Message {
  final String title;
  final String body;

  Message({required this.title, required this.body});
}

class MessageProvider extends ChangeNotifier {
  List<Message> _messages = [];

  List<Message> get messages => _messages;

  void addMessage(Message message) {
    _messages.add(message);
    notifyListeners();
  }
}

class NotificationServices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );
// 
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint('User granted provisional permission');
    } else {
      AppSettings.openNotificationSettings();
      debugPrint('User denied permission');
    }
  }

  void initLocalNotifications(
      BuildContext context, RemoteMessage message) async {
    var androidInitializationSettings = const AndroidInitializationSettings(
        '@mipmap/ic_launcher'); // for customized icon on notifications user drawable

    var initializationSetting = InitializationSettings(
      android: androidInitializationSettings,
    );
    await _flutterLocalNotificationsPlugin.initialize(initializationSetting,
        onDidReceiveNotificationResponse: (payload) {
      handleMessage(context, message);
    });
  }

  void firebaseInit(BuildContext context) {
    FirebaseMessaging.onMessage.listen(
      (message) {
        debugPrint(message.notification!.title.toString());
        debugPrint(message.notification!.body.toString());

        initLocalNotifications(context, message);
        showNotification(message);
      },
    );
  }

  Future<void> showNotification(RemoteMessage message) async {
    AndroidNotificationChannel channel = AndroidNotificationChannel(
      Random.secure().nextInt(100000).toString(),
      'High Importance Notification',
      importance: Importance.max,
    );

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            channel.id.toString(), channel.name.toString(),
            channelDescription: 'Your Channel description',
            importance: Importance.high,
            priority: Priority.high,
            ticker: 'ticker',
            icon: '@mipmap/ic_launcher');

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    Future.delayed(
      Duration.zero,
      () {
        _flutterLocalNotificationsPlugin.show(
            0,
            message.notification!.title.toString(),
            message.notification!.body.toString(),
            notificationDetails);
      },
    );
  }

  Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  void isTokenRefresh() async {
    messaging.onTokenRefresh.listen(
      (event) {
        event.toString();
        debugPrint('Refresh');
      },
    );
  }

  Future<void> setupInteractMessage(BuildContext context) async {
    //  When App is terminated
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      handleMessage(context, initialMessage);
    }

    // When App is in background
    FirebaseMessaging.onMessageOpenedApp.listen(
      (event) {
        debugPrint("jaa na");
        handleMessage(context, event);
      },
    );
  }

  void handleMessage(BuildContext context, RemoteMessage message) {
    // final messageProvider = Provider.of<MessageProvider>(context, listen: false);
    // final messageObj = Message(
    //   // id: message.data['id'],
    //   title: message.notification!.title.toString(),
    //   body: message.notification!.body.toString(),
    // );
    // messageProvider.addMessage(messageObj);
   Navigator.pushReplacementNamed(context, LandingPage.routeName);
  }
}
