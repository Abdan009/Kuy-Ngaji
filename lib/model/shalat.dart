part of 'models.dart';

class ScheduleShalat {
  String id;
  String nama;
  String jam;
  DateTime tanggal;
  ScheduleShalat({
    this.id,
    @required this.nama,
    @required this.jam,
    @required this.tanggal,
  });
}

List<ScheduleShalat> mockSceduleShalat = [
  ScheduleShalat(
    id: '1',
    nama: 'Shubuh',
    jam: '04.25',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
  ScheduleShalat(
    id: '2',
    nama: 'Dzuhur',
    jam: '11.55',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
  ScheduleShalat(
    id: '3',
    nama: 'Ashar',
    jam: '14.50',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
  ScheduleShalat(
    id: '4',
    nama: 'Magrib',
    jam: '18.00',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
  ScheduleShalat(
    id: '5',
    nama: 'Isya',
    jam: '19.00',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
];
