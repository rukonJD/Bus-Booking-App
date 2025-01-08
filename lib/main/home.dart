import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  final formats = DateFormat("yyyy-MM-dd");
  DateTime? journeys;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferred Bus"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: fromController,
              decoration: InputDecoration(
                labelText: "From",
                prefixIcon: Icon(Icons.location_city),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: toController,
              decoration: InputDecoration(
                labelText: "To",
                prefixIcon: Icon(Icons.location_city),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                // Open date picker when clicked
                DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: journeys ?? DateTime.now(), // Default to current date if no date
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2119),
                );
                if (selectedDate != null) {
                  setState(() {
                    journeys = selectedDate;
                  });
                }
              },
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Journey Date',
                  prefixIcon: Icon(Icons.date_range),
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  journeys == null ? 'Select Date' : formats.format(journeys!),
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("Searching for bus from ${fromController.text} to ${toController.text}");
              },
              child: Text("Search Bus"),
            ),
          ],
        ),
      ),
    );
  }
}
