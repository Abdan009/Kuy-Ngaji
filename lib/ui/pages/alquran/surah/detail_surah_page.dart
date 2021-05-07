part of '../../pages.dart';

class DetailSurahPage extends StatefulWidget {
  final String nama;
  final String nomor;
  final bool isSurah;

  const DetailSurahPage({Key key, this.nama, this.nomor, this.isSurah=false}) : super(key: key);


  @override
  _DetailSurahPageState createState() => _DetailSurahPageState();
}

class _DetailSurahPageState extends State<DetailSurahPage> {


  static BaseOptions options = new BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  List detailSurat=[];
  List terjemahan=[];
  var bismillah = "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ";

  @override
  void initState() {
    getDetailSurah();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.nama}",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: mainColor,
      ),
      body: Builder(builder: (_) {
        // List<Ayat> listAyat =
        //     mockAyat.where((element) => element.idSurah == surah.id).toList();
        return ListView.builder(
          itemCount: detailSurat.length,
          itemBuilder: (_, index) {
            var mod = index % 2;
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  if (index == 0)
                    SizedBox(
                      height: 20,
                    ),
                  widget.isSurah == false ? detailSurat[index]['text'].contains(bismillah) && detailSurat[index]['surah']['englishName'] != "Al-Faatiha" ?
                  Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffFAB41A)
                      ),
                      child:Text("$bismillah",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)) :
                  Container():
                  widget.isSurah  && detailSurat[index]['numberInSurah']==1? Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffFAB41A)
                      ),
                      child:Text("$bismillah",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)) : Container(),
                  Container(
                      decoration: BoxDecoration(
                          color: mod == 1 ? Colors.grey[100] : Colors.white12
                      )),
                  CardListWidget(
                      detailSurah: true,
                      nomor: detailSurat[index]['numberInSurah'].toString(),
                      title: detailSurat[index]['text'],
                      subTitle: terjemahan[index]['text'].toString()),
                  if (index == detailSurat.length - 1)
                    SizedBox(
                      height: 20,
                    ),
                ],
              ),
            );
          },
        );
      }),
    );
  }

  Future<void> getDetailSurah()async{
    try{
      Dio dio = new Dio(options);
      d.Response response;
      d.Response responseTerjemahan;
      String url = widget.isSurah ? "http://api.alquran.cloud/v1/surah/${widget.nomor}" :
          'http://api.alquran.cloud/v1/juz/${widget.nomor}' ;
      response = await dio.get(url);
      responseTerjemahan=await dio.get(widget.isSurah ? 'http://api.alquran.cloud/v1/surah/${widget.nomor}/id.indonesian' :
      'http://api.alquran.cloud/v1/juz/${widget.nomor}/id.indonesian');
      if(response.statusCode==200){

        setState(() {
          detailSurat=response.data['data']['ayahs'];
          terjemahan = responseTerjemahan.data['data']['ayahs'];
        });
        print(response.data);

      }




    }on DioError catch(e){
      print(e.message);
    }
  }

}


