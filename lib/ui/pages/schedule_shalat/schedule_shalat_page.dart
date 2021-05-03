part of '../pages.dart';

class ScheduleShalat extends StatefulWidget {
  @override
  _ScheduleShalatState createState() => _ScheduleShalatState();
}

class _ScheduleShalatState extends State<ScheduleShalat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        title: Text('Jadwal Shalat'),
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Indramayu',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Isya ',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('20.00',
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        '8 ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'menit ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'lagi',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              height: 500,
              width: Get.width - 2 * 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 5),
                        blurRadius: 10.0)
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
