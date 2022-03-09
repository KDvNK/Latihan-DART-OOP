import 'keterangan.dart';

class Staff with Absensi {
  String? _nama;
  int _tunjanganKehadiran = 0;
  int _jatahCuti = 12;
  int _totalGaji = 0;
  int _gajiDasar = 1500000;

  Staff(this._nama, this._tunjanganKehadiran, this._jatahCuti, this._totalGaji,
      this._gajiDasar);
}
