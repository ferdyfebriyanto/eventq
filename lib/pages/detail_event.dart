import 'package:eventq/pages/transaction_success.dart';
import 'package:flutter/material.dart';

class DetailEventPage extends StatefulWidget {
  const DetailEventPage({super.key});

  @override
  State<DetailEventPage> createState() => _DetailEventPageState();
}

class _DetailEventPageState extends State<DetailEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Event"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  'Detail Event',
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TransactionSuccess()),
                  );
                },
                child: const Text("Buy Ticket"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
