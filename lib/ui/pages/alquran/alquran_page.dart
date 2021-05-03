part of '../pages.dart';

class AlquranPage extends StatefulWidget {
  @override
  _AlquranPageState createState() => _AlquranPageState();
}

class _AlquranPageState extends State<AlquranPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: mainColor,
          title: Text("Al-Qur'an"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Surah',
              ),
              Tab(
                text: 'Juz',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SurahPage(),
            JuzPage(),
          ],
        ),
      ),
    );
  }
}
