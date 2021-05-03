part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: mainColor,
        unselectedItemColor: Color(0xFFE5E5E5),
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.mosque), label: 'Shalat'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.quran), label: "Al-Qur'an"),
        ],
      ),
      body: (currentIndex == 0)
          ? ScheduleShalat()
          : Center(
              child: Container(
                child: Text('Al-Quran'),
              ),
            ),
    );
  }
}
