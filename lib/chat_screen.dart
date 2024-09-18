import 'package:flutter/material.dart';
import 'package:search_view/widget/chat_projectCard.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChatProjectCard(
                name: 'Flower Logo designfggghhhhh',
                desc:
                    'dhghgjhyjmhmumumutmktjumkujtkmutjmyhryfgjnrdtfhnfdhndfhdfhregetrhyjtukjyhtyjukjytyhjuk',
                amount: '30000',
                buttonText: 'Completed',
                buttonColor: Colors.black,
                duration: '10 d')
          ],
        ),
      ),
    );
  }
}
