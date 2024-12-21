import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // WhatsApp color
        title: Text('WhatsApp', style: TextStyle(color: Colors.white)),
        actions: [
          Icon(Icons.search, color: Colors.white), // Search Icon
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white), // Menu Icon
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            buildChatRow('Azka', 'Aslamoaliekum', '12:22 PM', 'assets/avatar2.jpg'),
            const Divider(),
            buildChatRow('Momna', 'Photo', '8:45 AM', 'assets/avatar3.jpg'),
            const Divider(),
            buildChatRow('Minahil', '?', '10:47 PM', 'assets/avatar4.jpg'),
            const Divider(),
            buildChatRow('Sadia', 'Hy', '08:25 AM', 'assets/avatar5.jpg'),
            const Divider(),
            buildChatRow('Maleeha', 'Hello', '7:20 AM', 'assets/avatar6.jpg'),
            const Divider(),
            buildChatRow('Rubab', 'Eid Mubarak', '9:15 AM', 'assets/avatar7.jpg'),
            const Divider(),
            buildChatRow('Ammi', '', '6:00 AM', 'assets/avatar8.jpg'),
            const Divider(),
            buildChatRow('Sir Adnan', '', '11:30 AM', 'assets/avatar9.jpg'),
            const Divider(),
            buildChatRow('Sir Hammad', 'project', '07:50 AM', 'assets/avatar10.jpg'),
            const Divider(),
            buildChatRow('Shehla', 'giyan ho aap', '10:25 AM', 'assets/avatar11.jpg'),
            const Divider(),
            buildChatRow('Hooriya', '...', '12:20 AM', 'assets/avatar12.jpg'),
            const Divider(), // Final Divider
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.chat, color: Colors.green),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.update, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.groups, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.call, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Define your action here
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }

  // Helper method to build chat rows
  Widget buildChatRow(String name, String message, String time, String imagePath) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                message,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            time,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
