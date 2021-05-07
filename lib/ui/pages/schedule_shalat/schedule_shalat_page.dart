part of '../pages.dart';

class ScheduleShalat extends StatefulWidget {
  @override
  _ScheduleShalatState createState() => _ScheduleShalatState();
}

class _ScheduleShalatState extends State<ScheduleShalat> {


  // CurrentPray _currentPray;
  // static BaseOptions options = new BaseOptions(
  //   connectTimeout: 5000,
  //   receiveTimeout: 3000,
  // );

  CurrentPray _currentPray;
  static BaseOptions options=new BaseOptions(
    connectTimeout: 3000,
    receiveTimeout: 5000
  );


  @override
  void initState() {
    // getCurrentPray(city: "Indramayu",country: "id");
    getCurrencyPray(city: "Indramayu",country: "id");
    super.initState();
  }


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
                  height: 350,
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
                            // '9 september 2016 / 8 Dzulhizah 1437'
                           _currentPray==null ? "": "${DateFormat("dd MMMM yyyy",'id').format(
                                DateTime(int.parse(_currentPray.data.date.gregorian.year),
                                    _currentPray.data.date.gregorian.month.number,
                                  int.parse(_currentPray.data.date.gregorian.day)
                                ))}"
                            ,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        _currentPray==null ? Container():    Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 250,
                          // color: Colors.amber,
                          child: ListView.builder(
                            physics: ClampingScrollPhysics(),
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
                                         // index==0 ? _currentPray.data.timings.imsak+'  WIB' :
                                         // index==1 ? _currentPray.data.timings.fajr +'  WIB':
                                         // index==2 ? _currentPray.data.timings.sunrise +'  WIB':
                                         // index==3 ? _currentPray.data.timings.dhuhr +'  WIB':
                                         // index==4 ? _currentPray.data.timings.asr+'  WIB':
                                         // index==5 ? _currentPray.data.timings.maghrib+'  WIB':
                                         // _currentPray.data.timings.isha+'  WIB'

                                          index==0 ? _currentPray.data.timings.imsak + ' WIB' :
                                              index==1 ? _currentPray.data.timings.fajr + ' WIB' :
                                                  index==2 ? _currentPray.data.timings.sunrise + ' WIB' :
                                                      index==3 ? _currentPray.data.timings.dhuhr + ' WIB' :
                                                          index==4 ? "${_currentPray.data.timings.asr} WIB" :
                                                              index==5 ? _currentPray.data.timings.maghrib + ' WIB' :
                                                                  _currentPray.data.timings.isha + " WIB"
                                              ,
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


  // Future<CurrentPray> getCurrentPray({String country,String city})async{
  //   try{
  //     Dio dio = new Dio(options);
  //     d.Response response;
  //     String url = "http://api.aladhan.com/v1/timingsByCity";
  //     response = await dio.get(url, queryParameters: {
  //       "city" : "$city",
  //       "country" : "$country",
  //       "method" : "5"
  //     });
  //     if(response.statusCode==200){
  //
  //       setState(() {
  //         _currentPray= CurrentPray.fromJson(response.data);
  //       });
  //       print(response.data);
  //
  //     }
  //
  //
  //
  //
  //   }on DioError catch(e){
  //     print(e.message);
  //   }
  //   return _currentPray;
  //
  //
  // }


  Future<CurrentPray> getCurrencyPray({String city,String country})async{
    try{
      Dio dio=new Dio(options);
      d.Response response=await dio.get("http://api.aladhan.com/v1/timingsByCity",
      queryParameters: {
       "city" : "$city",
        "country" : "$country",
        "method" : "5"
      });

      if(response.statusCode==200){
        print(response.data);
        setState(() {
          _currentPray=CurrentPray.fromJson(response.data);
        });

      }

      return _currentPray;
    }on DioError catch(e){
      print(e);
      return null;
    }

  }



}
