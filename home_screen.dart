import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'images/rmutlogo.png',
              height: 300,
              width: 300,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
              color: Color(0xFF790E9F),
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF790E9F),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ยินดีต้อนรับ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'ชื่อผู้ใช้',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('หน้าแรก'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: const Text('ช่วยเหลือ'),
              leading: const Icon(Icons.chat),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: const Text('เปลี่ยนภาษา'),
              leading: const Icon(Icons.language),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: const Text('ข้อมูลเพิ่มเติม'),
              leading: const Icon(Icons.priority_high),
              onTap: () {
                // Handle drawer item tap
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // Add your desired functionality here
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200], // Customize the background color
                ),
                child: const Icon(
                  Icons.assessment, // Replace with your desired icon
                  color: Colors.black, // Customize the icon color
                ),
              ),
            ),
            SizedBox(height: 10), // Add spacing between buttons
            InkWell(
              onTap: () {
                // Add your desired functionality here
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200], // Customize the background color
                ),
                child: const Icon(
                  Icons.person, // Replace with your desired icon
                  color: Colors.black, // Customize the icon color
                ),
              ),
            ),
            SizedBox(height: 10), // Add spacing between buttons
            InkWell(
              onTap: () {
                // Add your desired functionality here
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200], // Customize the background color
                ),
                child: const Icon(
                  Icons.menu_book, // Replace with your desired icon
                  color: Colors.black, // Customize the icon color
                ),
              ),
            ),
            SizedBox(height: 10), // Add spacing between buttons
            InkWell(
              onTap: () {
                // Add your desired functionality here
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200], // Customize the background color
                ),
                child: const Icon(
                  Icons.store, // Replace with your desired icon
                  color: Colors.black, // Customize the icon color
                ),
              ),
            ),
            SizedBox(height: 10), // Add spacing between buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.newspaper, size: 30),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'RMUTT NEWS',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
