import 'keterangan.dart';

class Staff with Absensi {
  String? nama;
  int tunjanganKehadiran = 100000;
  int jatahCuti = 12;
  int totalGaji = 0;
  int gajiDasar = 1500000;

  Staff(this.nama, this.tunjanganKehadiran, this.jatahCuti, this.totalGaji,
      this.gajiDasar);
}
