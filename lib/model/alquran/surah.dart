part of '../models.dart';

class Surah {
  String id, nomor, nama, arti;
  Surah(
      {@required this.id,
      @required this.nomor,
      @required this.nama,
      @required this.arti});
}

List<Surah> mockSurah = [
  Surah(
    id: '1',
    nomor: '1',
    nama: 'Al-Fatihah',
    arti: 'Pembukaan',
  ),
  Surah(
    id: '2',
    nomor: '2',
    nama: 'Al-Baqarah',
    arti: 'Sapi Betina',
  ),
  Surah(
    id: '3',
    nomor: '3',
    nama: "Ali 'Imran",
    arti: "Keluarga 'Imran",
  ),
  Surah(
    id: '4',
    nomor: '4',
    nama: "An-Nisa'",
    arti: 'Wanita',
  ),
  Surah(
    id: '5',
    nomor: '5',
    nama: "Al-Ma'idah",
    arti: 'Jamuan (hidangan makanan)',
  ),
  Surah(
    id: '6',
    nomor: '6',
    nama: "Al-An'am",
    arti: 'Hewan Ternak',
  ),
  Surah(
    id: '7',
    nomor: '7',
    nama: " Al-A’raf",
    arti: 'Tempat yang tertinggi',
  ),
  Surah(
    id: '8',
    nomor: '8',
    nama: "Al-Anfal",
    arti: 'Harta rampasan perang',
  ),
  Surah(
    id: '9',
    nomor: '9',
    nama: "At-Taubah",
    arti: 'Pengampunan',
  ),
  Surah(
    id: '10',
    nomor: '10',
    nama: "Yunus",
    arti: 'Nabi Yunus',
  ),
  Surah(
    id: '11',
    nomor: '11',
    nama: "Hud",
    arti: 'Nabi Hud',
  ),
  Surah(
    id: '12',
    nomor: '12',
    nama: "Yusuf",
    arti: 'Nabi Yusuf',
  ),
  Surah(
    id: '13',
    nomor: '13',
    nama: "Ar-Ra’d",
    arti: 'Guruh (petir)',
  ),
  Surah(
    id: '14',
    nomor: '14',
    nama: "Ibrahim",
    arti: 'Nabi Ibrahim',
  ),
  Surah(
    id: '15',
    nomor: '15',
    nama: "Al-Hijr",
    arti: 'Gunung Al Hijr',
  ),
];
