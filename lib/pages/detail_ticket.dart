import 'package:flutter/material.dart';

class DetailTicketPage extends StatefulWidget {
  const DetailTicketPage({super.key});

  @override
  State<DetailTicketPage> createState() => _DetailTicketPageState();
}

class _DetailTicketPageState extends State<DetailTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Ticket"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: const Text("Detail Ticket"),
            ),
          ],
        ),
      ),
    );
  }
}
