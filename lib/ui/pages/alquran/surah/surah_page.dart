part of '../../pages.dart';

class SurahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: ListView.builder(
          itemCount: mockSurah.length,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Get.to(
                    DetailSurahPage(mockSurah[index]),
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
                          nomor: mockSurah[index].nomor,
                          title: mockSurah[index].nama,
                          subTitle: mockSurah[index].arti),
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
}
