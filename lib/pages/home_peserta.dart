import 'package:eventq/pages/detail_event.dart';
import 'package:eventq/pages/ticket.dart';
import 'package:eventq/pages/user.dart';
import 'package:eventq/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class HomePesertaPage extends StatefulWidget {
  const HomePesertaPage({super.key});

  @override
  State<HomePesertaPage> createState() => _HomePesertaPageState();
}

class _HomePesertaPageState extends State<HomePesertaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5FAFF),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Hai, Ferdy',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Rekomendasi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              //untuk merubah arah scroll menjadi ke kanan
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/free-vector/music-event-poster-template-with-abstract-shapes_1361-1316.jpg?w=1380&t=st=1665363069~exp=1665363669~hmac=b01bf3b7eae945ed73ab16f301d929834f15fb51faf7e4b2fc5506660aaf8631"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/free-vector/music-event-poster-template-with-abstract-shapes_1361-1316.jpg?w=1380&t=st=1665363069~exp=1665363669~hmac=b01bf3b7eae945ed73ab16f301d929834f15fb51faf7e4b2fc5506660aaf8631"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/free-vector/music-event-poster-template-with-abstract-shapes_1361-1316.jpg?w=1380&t=st=1665363069~exp=1665363669~hmac=b01bf3b7eae945ed73ab16f301d929834f15fb51faf7e4b2fc5506660aaf8631"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'Terbaru',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/free-vector/music-event-poster-template-with-abstract-shapes_1361-1316.jpg?w=1380&t=st=1665363069~exp=1665363669~hmac=b01bf3b7eae945ed73ab16f301d929834f15fb51faf7e4b2fc5506660aaf8631"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailEventPage(),
                    ),
                  ),
                  tileColor: Colors.white,
                  title: const Text("Pestapora 2022"),
                  subtitle: const Text("12 November 2022"),
                  trailing: const Text("Rp. 100.000"),
                ),
                ListTile(
                  leading: Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/free-vector/music-event-poster-template-with-abstract-shapes_1361-1316.jpg?w=1380&t=st=1665363069~exp=1665363669~hmac=b01bf3b7eae945ed73ab16f301d929834f15fb51faf7e4b2fc5506660aaf8631"),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailEventPage(),
                    ),
                  ),
                  tileColor: Colors.white,
                  title: const Text("Pestapora 2021"),
                  subtitle: const Text("12 November 2021"),
                  trailing: const Text("Rp. 100.000"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
