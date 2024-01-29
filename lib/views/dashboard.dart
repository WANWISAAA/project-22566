import 'package:flutter/material.dart';
import 'package:flutter_miniproject/views/about.dart';
import 'package:flutter_miniproject/views/home.dart';
import 'package:flutter_miniproject/views/profile.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({super.key, required this.title});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late final String titleMenu;
  late final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Elon Musk"),
              accountEmail: Text("elonmusk@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text("Home Page"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const DashboardPage(title: "Dashboard Page"),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.app_blocking),
              title: const Text("Profile Page"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ProfilePage(title: "Profile Page"),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.key),
              title: const Text("About Page"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const AboutPage(title: "About Page"),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.radar),
              title: const Text("Dashboard Page"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const DashboardPage(title: "Dashboard Page"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            CardWidget(
              titleMenu: "REATful API",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(title: "REATful API"),
                  ),
                );
              },
            ),
            CardWidget(
              titleMenu: "About Page",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(title: "About Page"),
                  ),
                );
              },
            ),
            CardWidget(
              titleMenu: "Profile Page",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ProfilePage(title: "Profile Page"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget CardWidget(
      {required String titleMenu, required GestureTapCallback onTap}) {
    return Card(
      elevation: 20.0,
      color: Colors.lightBlueAccent,
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            titleMenu,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
