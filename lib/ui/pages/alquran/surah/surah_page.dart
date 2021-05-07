part of '../../pages.dart';

class SurahPage extends StatefulWidget {
  @override
  _SurahPageState createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  static BaseOptions options = new BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  // List listSurat=[];
  List listSurat=[];

  @override
  void initState() {
    // if(listSurat.isEmpty)getSurah();
    getSurah();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: ListView.builder(
          itemCount: listSurat.length,
          itemBuilder: (_, index) => InkWell(
                onTap: () {
                  print("A");
                  Get.to(
                    DetailSurahPage(
                      nomor: listSurat[index]['nomor'],
                      nama: listSurat[index]['nama'],
                      isSurah: true,
                    ),
                  );
                },
                child: Container(
                  child: Column(
                    children: [
                      if (index == 0)
                        SizedBox(
                          height: 20,
                        ),
                      CardListWidget(
                          nomor: listSurat[index]['nomor'],
                          title: listSurat[index]['nama'],
                          subTitle: listSurat[index]['arti']),
                      if (index == mockSurah.length - 1)
                        SizedBox(
                          height: 20,
                        ),
                    ],
                  ),
                ),
              )),
    );
  }

  // Future getSurah()async{
  //   try{
  //     Dio dio = new Dio(options);
  //     d.Response response;
  //     String url = "https://api.banghasan.com/quran/format/json/surat";
  //     response = await dio.get(url);
  //     if(response.statusCode==200){
  //
  //       setState(() {
  //         listSurat=response.data['hasil'];
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
  //
  //
  //
  // }


  Future<void> getSurah()async{
    try{

        Dio dio=new Dio(options);
        d.Response response=await dio.get("https://api.banghasan.com/quran/format/json/surat");
        if(response.statusCode==200){
          setState(() {
            listSurat=response.data["hasil"];

          });

          print(listSurat);
        }
      
    }on DioError catch(e){
      print(e);
    }
  }
}
