import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgriApp'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Farm Name and Weather Section
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.purple,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hi Username', style: TextStyle(color: Colors.white, fontSize: 24)),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Farm Name',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Column(
                        children: const [
                          Text('23°', style: TextStyle(color: Colors.white, fontSize: 48)),
                          Text('Feels like 21°', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text('Partially Cloudy', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            // Weekly Humidity Chart Placeholder
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text('Weekly Humidity Chart Placeholder'),
            ),

            // Crop Health Section
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text('Crop Health Section Placeholder'),
            ),

            // Today's Tasks List
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: List.generate(
                  5,
                      (index) => ListTile(
                    title: Text('Task_Name ${index + 1}'),
                    subtitle: const Text('Task_Description'),
                    trailing: Checkbox(value: index % 2 == 0, onChanged: (val) {}),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              break; // Stay on Home
            case 1:
              Navigator.pushNamed(context, '/marketplace');
              break;
            case 2:
              Navigator.pushNamed(context, '/advisory');
              break;
            case 3:
              Navigator.pushNamed(context, '/more');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Marketplace'),
          BottomNavigationBarItem(icon: Icon(Icons.support_agent), label: 'Advisory'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
        ],
      ),
    );
  }
}
