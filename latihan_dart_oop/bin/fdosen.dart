import 'keterangan.dart';

class Dosen {
  String? nama;
  int tambahanGaji = 40000;
  int jumlahSKS = 0;
  int penghasilan = 0;
  String? kategori;
  int tunjanganKehadiran = 100000;

  Dosen(this.nama, this.tambahanGaji, this.jumlahSKS, this.penghasilan,
      this.kategori, this.tunjanganKehadiran);
}

class DosenLB extends Dosen with Mengajar {
  int gajiDasar = 3000000;

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
