part of '../../pages.dart';

class JuzPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: ListView.builder(
          itemCount: mockJuz.length,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Get.to(DetailJuz(mockJuz[index]));
                },
                child: Container(
                  child: Column(
                    children: [
                      if (index == 0)
                        SizedBox(
                          height: 20,
                        ),
                      CardListWidget(
                          nomor: mockJuz[index].nomorJuz,
                          title: "Juz " + mockJuz[index].nomorJuz),
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
