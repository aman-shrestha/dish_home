import 'package:flutter/material.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text("Ask me anything"),
      leading: Container(),
    ));
  }
}
