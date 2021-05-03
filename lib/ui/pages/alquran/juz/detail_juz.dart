part of '../../pages.dart';

class DetailJuz extends StatelessWidget {
  final Juz juz;
  DetailJuz(this.juz);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Juz " + juz.nomorJuz,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: mainColor,
      ),
      body: Builder(builder: (_) {
        List<Ayat> listAyat =
            mockAyat.where((element) => element.idJuz == juz.id).toList();
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
                  if (listAyat[index].no == '1')
                    Builder(builder: (_) {
                      Surah nameSurah = mockSurah.firstWhere(
                          (element) => element.id == listAyat[index].idSurah,
                          orElse: () => null);
                      return Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            nameSurah.nama,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    }),
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
