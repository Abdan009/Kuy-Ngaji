part of 'widgets.dart';

class CardListWidget extends StatelessWidget {
  final String nomor, title, subTitle;
  final bool detailSurah;
  var bismillah = "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ";
  CardListWidget({
    @required this.nomor,
    @required this.title,
    this.subTitle, this.detailSurah=false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             if(!title.contains(bismillah))   Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: mainColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      nomor,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child:Text(
                            title.replaceAll(bismillah, ""),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        if (subTitle != null)
                          SizedBox(
                            height: 5,
                          ),
                        if (subTitle != null)
                          Align(
                            alignment: detailSurah && nomor==1 ?Alignment.center :Alignment.centerLeft,
                            child: Text(
                              subTitle,
                              textAlign: TextAlign.left,
                            ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
