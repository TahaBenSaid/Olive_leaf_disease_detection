import 'package:flutter/material.dart';
import 'DetectionPage.dart';
bool indexStored = false;
class ReportPage extends StatelessWidget {
  const ReportPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histogram'),
      ),
      body: Column(
        children: [
          Container(
            height: 300, // Adjust the height as needed
            width: double.infinity,
            color: Colors.grey[300],
            child: Center(
              child: Text(
                'Histogram',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Add your button 1 logic here
                  },
                  icon: Icon(Icons.delete),
                  label: Text('Erase One'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Add your button 2 logic here
                  },
                  icon: Icon(Icons.refresh),
                  label: Text('Reset'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Detect',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_paste),
            label: 'Report',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation to different screens based on index
          if (index == 0) {
            indexStored=true;
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetectionPage()));
          }
        },
      ),
    );
  }
}
