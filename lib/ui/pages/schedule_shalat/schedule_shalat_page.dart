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
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 300,
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
                  child: Container(
                    padding: EdgeInsets.only(
                        right: 10, left: 10, top: 15, bottom: 10),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.calendarAlt,
                            color: Colors.black,
                            size: 35,
                          ),
                          title: Text(
                            'Hari ini / Jumat',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            '9 september 2016 / 8 Dzulhizah 1437',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 200,
                          // color: Colors.amber,
                          child: ListView.builder(
                            itemCount: mockSceduleShalat.length,
                            itemBuilder: (_, index) => Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          mockSceduleShalat[index].nama,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          mockSceduleShalat[index].jam +
                                              '  WIB',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (index != mockSceduleShalat.length - 1)
                                    Divider()
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
