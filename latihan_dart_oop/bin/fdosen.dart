import 'keterangan.dart';

class Dosen {
  String? _nama;
  int tambahanGaji = 40000;
  int jumlahSKS = 0;
  int penghasilan = 0;
  String? _kategori;
  int tunjanganKehadiran = 0;

  Dosen(this._nama, this.tambahanGaji, this.jumlahSKS, this.penghasilan,
      this._kategori, this.tunjanganKehadiran);
}

class DosenLB extends Dosen with Mengajar {
  DosenLB(String? nama, int tambahanGaji, int jumlahSKS, int penghasilan,
      String? kategori, int tunjanganKehadiran)
      : super(nama, tambahanGaji, jumlahSKS, penghasilan, kategori,
            tunjanganKehadiran);
}

class DosenTamu extends Dosen with Mengajar {
  DosenTamu(String? nama, int tambahanGaji, int jumlahSKS, int penghasilan,
      String? kategori, int tunjanganKehadiran)
      : super(nama, tambahanGaji, jumlahSKS, penghasilan, kategori,
            tunjanganKehadiran);
}

class DosenTetap extends Dosen with Mengajar {
  int gajiDasar = 5000000;

  DosenTetap(String? nama, int tambahanGaji, int jumlahSKS, int penghasilan,
      String? kategori, int tunjanganKehadiran)
      : super(nama, tambahanGaji, jumlahSKS, penghasilan, kategori,
            tunjanganKehadiran);

  get Gaji {
    return (jumlahSKS * tambahanGaji);
  }
}
