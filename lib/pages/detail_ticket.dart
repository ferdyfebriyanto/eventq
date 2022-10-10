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
      backgroundColor: Color(0xffF5FAFF),
      appBar: AppBar(
        title: Text("Detail Ticket"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'Detail Ticket',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: const Text("Event Name : Event 1"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: const Text("Event Date : 20-20-2020"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: const Text("Event Time : 20:20"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: const Text("Event Location : Jl. Jalan"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: const Text("Event Description : Event 1"),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
