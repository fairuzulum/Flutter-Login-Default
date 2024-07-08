import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomCurveClipper(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF064184), Color(0xFF0B61C4)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/brand.png',
                        height: 120,
                        width: 100,
                      ),
                      CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.png')),
                    ],
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Your current location',
                          labelStyle: TextStyle(fontSize: 12),
                          prefixIcon:
                              Icon(Icons.my_location, color: Color(0xFF0B61C4)),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Search for destination location',
                          labelStyle: TextStyle(fontSize: 12),
                          prefixIcon:
                              Icon(Icons.location_on, color: Color(0xFF0B61C4)),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0B61C4),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(double.infinity, 40),
                        ),
                        child: Text('Search'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFB3E5FC),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: -3,
                        child: Image.asset(
                          'assets/cloud.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Positioned(
                        top: 22,
                        left: 180,
                        child: Image.asset(
                          'assets/cloud.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          'assets/cloud.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 50,
                        child: Image.asset(
                          'assets/sun.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Positioned(
                        bottom: -15,
                        right: 0,
                        child: Image.asset(
                          'assets/car.png',
                          width: 120,
                          height: 120,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 130, top: 30, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ramah Lingkungan dan Hemat!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Ayo naik angkot, kurangi polusi\n'
                              'dan hemat biaya transportasi.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Favourite Route',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF0B61C4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text('Detail'),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                FavoriteRouteCard(
                    route: 'Gede Bage - Stasiun Hall',
                    iconColor: Color(0xFF0C991A)),
                FavoriteRouteCard(
                    route: 'Abdul Muis - Ledeng', iconColor: Color(0xFF0EAE9B)),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map, size: 30),
              label: 'Maps',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history, size: 30),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF0B61C4),
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class FavoriteRouteCard extends StatelessWidget {
  final String route;
  final Color iconColor;

  const FavoriteRouteCard({required this.route, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: iconColor,
              child: Icon(Icons.directions_bus, color: Colors.white),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                route,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.7, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height * 0.7);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
