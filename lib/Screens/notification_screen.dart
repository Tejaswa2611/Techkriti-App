// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../Services/notification_services.dart';

// class MessagesPage extends StatelessWidget {
//   static const routeName = '/notification-page';
//   const MessagesPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final messageProvider = Provider.of<MessageProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Messages'),
//       ),
//       body: ListView.builder(
//         itemCount: messageProvider.messages.length,
//         itemBuilder: (context, index) {
//           final message = messageProvider.messages[index];
//           return ListTile(
//             title: Text(message.title),
//             subtitle: Text(message.body),
//           );
//         },
//       ),
      
//     );
//   }
// }
