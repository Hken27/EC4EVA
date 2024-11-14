import 'package:flutter/material.dart';
import 'package:tugas_dua/Model/data/data.dart';
import 'package:tugas_dua/Model/event_type_model.dart';
import 'package:tugas_dua/Model/events_model.dart';
import 'package:tugas_dua/View/HomeView/EventPage.dart';
import 'package:tugas_dua/View/HomeView/EventView_screen.dart';
import 'package:tugas_dua/View/HomeView/MerchPage.dart';
import 'package:tugas_dua/View/HomeView/PopularEventView_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<EventTypeModel> eventsType = [];
  List<EventsModel> events = [];

  @override
  void initState() {
    super.initState();
    eventsType = getEventTypes();
    events = getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 22, 22, 22)),
            ),
            SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/profilepic.png",
                              height: 40,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Row(
                          children: <Widget>[
                            Text(
                              "ENDLESS ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "CHAIN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    /// Using GridView for Event and Merchant buttons
                    GridView.count(
                      crossAxisCount: 2, // Number of columns
                      crossAxisSpacing: 16.0, // Horizontal spacing
                      mainAxisSpacing: 16.0, // Vertical spacing
                      childAspectRatio: 3 / 2.5, // Adjusted height-to-width ratio for smaller size
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: eventsType.map((event) {
                        return GestureDetector(
                          onTap: () {
                            // Navigate to EventPage if event type matches "Event"
                            if (event.eventType == "Event") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EventPage()),
                              );
                            } else if (event.eventType == "Merchant") {
                              // Navigate to MerchandisePage if event type matches "Merchant"
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MerchandisePage()),
                              );
                            }
                          },
                          child: Column(
                            children: [
                              Expanded(
                                child: EventviewScreen(
                                  imgAssetPath: event.imgAssetPath,
                                  eventType: event.eventType,
                                ),
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        );
                      }).toList(),
                    ),

                    /// Popular Events Section
                    const SizedBox(height: 8),
                    const SizedBox(height: 8),
                    ListView.builder(
                      itemCount: events.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Logika navigasi atau aksi lain bisa ditambahkan di sini
                          },
                          child: PopularEventView(
                            desc: events[index].desc,
                            imgeAssetPath: events[index].imgeAssetPath,
                            date: events[index].date,
                            address: events[index].address,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
