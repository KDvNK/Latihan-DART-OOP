class Dosen {
  String? _nama;
  int tambahanGaji = 40000;
  int jumlahSKS = 0;
  int penghasilan = 0;
}

class DosenLB extends Dosen {
  int gajiDasar = 3500000;
}

class DosenTamu extends Dosen {}

class DosenTetap extends Dosen {
  int tunjanganKehadiran = 0;
  int gajiDasar = 5000000;
}
