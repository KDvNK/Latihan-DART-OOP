import 'dart:io';
import 'fdosen.dart';
import 'fmahasiswa.dart';
import 'fstaff.dart';

void main() {
  int pilihan = 0;
  int menu = 0;
  int jenisDosen = 0;
  int kategoriDisplay = 0;
  int cuti = 0;
  // var listMahasiswa = [Mahasiswa('nama', 'nrp', 0, 'status', 0, 0.00, 0.00)];
  // var listDosen = [Dosen('_nama', 0, 0, 0, '_kategori', 0)];
  // var listStaff = [Staff('_nama', 0, 0, 12, 0, 0)];
  var mahasiswa1 = Mahasiswa(' ', ' ', 0, ' ', 0, 0, 0);
  var staff1 = Staff('', 0, 100000, 12, 0, 1500000);
  var dosen1 = Dosen(' ', 40000, 0, 0, ' ', 100000);
  var dosenlb = DosenLB(' ', 40000, 0, 0, ' ', 100000);
  var dosentamu = DosenTamu(' ', 40000, 0, 0, ' ', 100000);
  var dosentetap = DosenTetap(' ', 40000, 0, 0, ' ', 100000);
  // var listMahasiswa = [
  //   mahasiswa1.nama,
  //   mahasiswa1.nrp,
  //   mahasiswa1.sks,
  //   mahasiswa1.status,
  //   mahasiswa1.jumlahSKS,
  //   mahasiswa1.ips,
  //   mahasiswa1.ipk
  // ];

  do {
    print("Select a role: ");
    print("1. Mahasiswa");
    print("2. Dosen");
    print("3. Staff");
    print("0. Exit");
    stdout.write("Pick the role by typing its number: ");
    String? dtInput = stdin.readLineSync();
    pilihan = int.parse(dtInput!);

    if (pilihan == 1) {
      print(" ");
      print("Silahkan pilih menu: ");
      print("1. Upload data mahasiswa");
      print("2. Display data-data mahasiswa");
      stdout
          .write("Pilih salah satu menu dengan mengetikkan angka pada menu: ");
      String? dtInput2 = stdin.readLineSync();
      menu = int.parse(dtInput2!);
      if (menu == 1) {
        // var dataMahasiswa = ['Coba', 'C121234', 24, 'Aktif', 83, 2.45, 2.43];
        print(" ");
        stdout.write('Nama: ');
        mahasiswa1.nama = stdin.readLineSync();
        stdout.write('NRP: ');
        mahasiswa1.nrp = stdin.readLineSync();
        stdout.write('SKS yang diambil: ');
        String? inputSKS = stdin.readLineSync();
        mahasiswa1.sks = int.parse(inputSKS!);
        while (mahasiswa1.sks > 24) {
          print("Maksimal 24 SKS!");
          stdout.write('SKS yang diambil: ');
          String? inputSKS = stdin.readLineSync();
          mahasiswa1.sks = int.parse(inputSKS!);
        }

        // mahasiswa1.status = stdin.readLineSync();
        stdout.write('Jumlah SKS yang sudah lulus: ');
        String? inputJumlahSKS = stdin.readLineSync();
        mahasiswa1.jumlahSKS = int.parse(inputJumlahSKS!);
        stdout.write('IPS: ');
        String? inputIPS = stdin.readLineSync();
        mahasiswa1.ips = double.parse(inputIPS!);
        stdout.write('IPK: ');
        String? inputIPK = stdin.readLineSync();
        mahasiswa1.ipk = double.parse(inputIPK!);
        print(" ");
      } else if (menu == 2) {
        // var dataMahasiswa = ['Coba', 'C121234', 23, 'Aktif', 83, 2.45, 2.43];
        print(" ");
        print('Nama: ${mahasiswa1.nama}');
        print('NRP: ${mahasiswa1.nrp}');
        print('SKS yang diambil: ${mahasiswa1.sks}');
        // print('Status Mahasiswa: ${mahasiswa1.status}');
        stdout.write('Status Mahasiswa: ');
        if (mahasiswa1.sks != 0) {
          print("Aktif");
        } else {
          print("Cuti");
        }
        print('Jumlah SKS yang sudah lulus: ${mahasiswa1.jumlahSKS}');
        print('IPS: ${mahasiswa1.ips}');
        print('IPK: ${mahasiswa1.ipk}');
        print(" ");
        // listMahasiswa.add(Mahasiswa(
        //     mahasiswa1.nama,
        //     mahasiswa1.nrp,
        //     mahasiswa1.sks,
        //     mahasiswa1.status,
        //     mahasiswa1.jumlahSKS,
        //     mahasiswa1.ips,
        //     mahasiswa1.ipk));
      }
    } else if (pilihan == 2) {
      print(" ");
      print("Silahkan pilih menu: ");
      print("1. Upload data dosen");
      print("2. Display data-data dosen");
      stdout
          .write("Pilih salah satu menu dengan mengetikkan angka pada menu: ");
      String? dtInput2 = stdin.readLineSync();
      menu = int.parse(dtInput2!);
      if (menu == 1) {
        print(" ");
        print("Pilih jenis dosen: ");
        print("1. Dosen LB");
        print("2. Dosen Tamu");
        print("3. Dosen Tetap");
        stdout.write(
            "Pilih salah satu menu dengan mengetikkan angka pada menu: ");
        String? dtInput3 = stdin.readLineSync();
        jenisDosen = int.parse(dtInput3!);
        if (jenisDosen == 1) {
          print(" ");
          stdout.write('Nama: ');
          dosenlb.nama = stdin.readLineSync();
          stdout.write('Jumlah SKS yang diampu: ');
          String? inputJumlahSKS = stdin.readLineSync();
          dosenlb.jumlahSKS = int.parse(inputJumlahSKS!);
          print(" ");
        } else if (jenisDosen == 2) {
          print(" ");
          stdout.write('Nama: ');
          dosentamu.nama = stdin.readLineSync();
          stdout.write('Jumlah SKS yang diampu: ');
          String? inputJumlahSKS = stdin.readLineSync();
          dosentamu.jumlahSKS = int.parse(inputJumlahSKS!);
          print(" ");
        } else if (jenisDosen == 3) {
          print(" ");
          stdout.write('Nama: ');
          dosentetap.nama = stdin.readLineSync();
          stdout.write('Jumlah SKS yang diampu: ');
          String? inputJumlahSKS = stdin.readLineSync();
          dosentetap.jumlahSKS = int.parse(inputJumlahSKS!);
          print(" ");
        }
      } else if (menu == 2) {
        print(" ");
        print("1. Display data dosen LB");
        print("2. Display data dosen tamu");
        print("3. Display data dosen tetap");
        stdout.write(
            "Pilih salah satu menu dengan mengetikkan angka pada menu: ");
        String? dtInput4 = stdin.readLineSync();
        kategoriDisplay = int.parse(dtInput4!);
        if (kategoriDisplay == 1) {
          print(" ");
          print('Nama: ${dosenlb.nama}');
          print('Jumlah SKS yang diampu: ${dosenlb.jumlahSKS}');
          dosenlb.penghasilan = dosenlb.jumlahSKS * dosenlb.tambahanGaji +
              dosenlb.gajiDasar +
              dosenlb.tunjanganKehadiran;
          print('Penghasilan: ${dosenlb.penghasilan}');
          print("Objective: ");
          dosenlb.mengajar();
          print(" ");
        } else if (kategoriDisplay == 2) {
          print(" ");
          print('Nama: ${dosentamu.nama}');
          print('Jumlah SKS yang diampu: ${dosentamu.jumlahSKS}');
          dosentamu.penghasilan = dosentamu.jumlahSKS * dosentamu.tambahanGaji +
              dosentamu.tunjanganKehadiran;
          print('Penghasilan: ${dosentamu.penghasilan}');
          print("Objective: ");
          dosentamu.mengajar();
          print(" ");
        } else if (kategoriDisplay == 3) {
          print(" ");
          print('Nama: ${dosentetap.nama}');
          print('Jumlah SKS yang diampu: ${dosentetap.jumlahSKS}');
          dosentetap.penghasilan =
              dosentetap.jumlahSKS * dosentetap.tambahanGaji +
                  dosentetap.gajiDasar +
                  dosentetap.tunjanganKehadiran;
          print('Penghasilan: ${dosentetap.penghasilan}');
          print("Objective: ");
          dosentetap.mengajar();
          print(" ");
        }
      }
    } else if (pilihan == 3) {
      print(" ");
      print("Silahkan pilih menu: ");
      print("1. Upload data staff");
      print("2. Display data-data staff");
      stdout
          .write("Pilih salah satu menu dengan mengetikkan angka pada menu: ");
      String? dtInput2 = stdin.readLineSync();
      menu = int.parse(dtInput2!);
      if (menu == 1) {
        print(" ");
        stdout.write('Nama: ');
        staff1.nama = stdin.readLineSync();
        stdout.write('Jumlah kehadiran (dalam sebulan): ');
        String? inputKehadiran = stdin.readLineSync();
        staff1.kehadiran = int.parse(inputKehadiran!);
        stdout.write('Ajukan cuti? (Y/N) ');
        if (stdin.readLineSync() == "Y") {
          stdout.write('Berapa hari cuti? (dalam hari) ');
          String? ajukanCuti = stdin.readLineSync();
          cuti = int.parse(ajukanCuti!);
          while (cuti > staff1.jatahCuti) {
            print(
                'Pengajuan cuti melebihi jatah cuti! Silahkan input kembali.');
            stdout.write('Berapa hari cuti? (dalam hari) ');
            String? ajukanCuti = stdin.readLineSync();
            cuti = int.parse(ajukanCuti!);
          }
        } else if (stdin.readLineSync() == "N") {
          cuti;
        }
      } else if (menu == 2) {
        print(" ");
        print('Nama: ${staff1.nama}');
        print(
            'Tunjangan Kehadiran: ${staff1.kehadiran * staff1.tunjanganKehadiran}');
        print('Jatah Cuti: ${staff1.jatahCuti - cuti} hari');
        staff1.totalGaji =
            staff1.kehadiran * staff1.tunjanganKehadiran + staff1.gajiDasar;
        print('Total gaji yang didapatkan: ${staff1.totalGaji}');
        print("Objective: ");
        staff1.absensi();
        print(" ");
      }
    }
  } while (pilihan != 0);
}
