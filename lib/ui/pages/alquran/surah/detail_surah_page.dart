part of '../../pages.dart';

class DetailSurahPage extends StatelessWidget {
  final Surah surah;
  DetailSurahPage(this.surah);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          surah.nama,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: mainColor,
      ),
      body: Builder(builder: (_) {
        List<Ayat> listAyat =
            mockAyat.where((element) => element.idSurah == surah.id).toList();
        return ListView.builder(
          itemCount: listAyat.length,
          itemBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  if (index == 0)
                    SizedBox(
                      height: 20,
                    ),
                  CardListWidget(
                      nomor: listAyat[index].no,
                      title: listAyat[index].isi,
                      subTitle: listAyat[index].arti),
                  if (index == listAyat.length - 1)
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
}
