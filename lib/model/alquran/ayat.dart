part of '../models.dart';

class Ayat {
  String id, idSurah, idJuz, no, isi, arti;
  Ayat({
    @required this.id,
    @required this.idSurah,
    @required this.idJuz,
    @required this.no,
    @required this.isi,
    @required this.arti,
  });
}

List<Ayat> mockAyat = [
  Ayat(
    id: '1',
    idSurah: '1',
    idJuz: '1',
    no: '1',
    isi: 'بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ',
    arti: "Dengan nama Allah Yang Maha Pengasih, Maha Penyayang",
  ),
  Ayat(
    id: '2',
    idSurah: '1',
    idJuz: '1',
    no: '2',
    isi: "اَلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْنَ",
    arti: "Segala puji bagi Allah, Tuhan seluruh alam,",
  ),
  Ayat(
    id: '3',
    idSurah: '1',
    idJuz: '1',
    no: '3',
    isi: "الرَّحْمٰنِ الرَّحِيْمِ",
    arti: "Yang Maha Pengasih, Maha Penyayang,",
  ),
  Ayat(
    id: '4',
    idSurah: '1',
    idJuz: '1',
    no: '4',
    isi: "مٰلِكِ يَوْمِ الدِّيْنِ",
    arti: "Pemilik hari pembalasan.",
  ),
  Ayat(
    id: '5',
    idSurah: '1',
    idJuz: '1',
    no: '5',
    isi: "اِيَّاكَ نَعْبُدُ وَاِيَّاكَ نَسْتَعِيْ",
    arti:
        "Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami mohon pertolongan.",
  ),
  Ayat(
    id: '6',
    idSurah: '1',
    idJuz: '1',
    no: '6',
    isi: "اِھْدِنَا الصِّرَاطَ الْمُسْتَـقِيْمَ",
    arti: "Tunjukilah kami jalan yang lurus",
  ),
  Ayat(
    id: '7',
    idSurah: '1',
    idJuz: '1',
    no: '7',
    isi:
        "صِرَاطَ الَّذِيۡنَ اَنۡعَمۡتَ عَلَيۡهِمۡ ۙ غَيۡرِ الۡمَغۡضُوۡبِ عَلَيۡهِمۡ وَلَا الضَّآلِّيۡ",
    arti:
        "(yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan (jalan) mereka yang dimurkai, dan bukan (pula jalan) mereka yang sesat.",
  ),
];
