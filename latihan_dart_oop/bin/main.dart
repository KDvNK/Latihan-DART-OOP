import 'dart:io';
import 'fdosen.dart';
import 'fmahasiswa.dart';
import 'fstaff.dart';

void main() {
  int pilihan = 0;
  int menu = 0;
  int jenisDosen = 0;
  var listMahasiswa = [Mahasiswa('nama', 'nrp', 0, 'status', 0, 0.00, 0.00)];
  var listDosen = [Dosen('_nama', 0, 0, 0, '_kategori', 0)];
  var listStaff = [Staff('_nama', 0, 12, 0, 0)];
  var mahasiswa1 = Mahasiswa(' ', ' ', 0, ' ', 0, 0, 0);
  var staff1 = Staff('', 0, 12, 0, 0);

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
        var dataMahasiswa = ['Coba', 'C121234', 24, 'Aktif', 83, 2.45, 2.43];
        print(" ");
        stdout.write('Nama: ');
        mahasiswa1.nama = stdin.readLineSync();
        stdout.write('NRP: ');
        mahasiswa1.nrp = stdin.readLineSync();
        stdout.write('SKS yang diambil: ');
        String? inputSKS = stdin.readLineSync();
        mahasiswa1.sks = int.parse(inputSKS!);
        if (mahasiswa1.sks > 24) {
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
        var dataMahasiswa = ['Coba', 'C121234', 23, 'Aktif', 83, 2.45, 2.43];
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
        print("Pilih jenis dosen: ");
        print("1. Dosen LB");
        print("2. Dosen Tamu");
        print("3. Dosen Tetap");
        stdout.write(
            "Pilih salah satu menu dengan mengetikkan angka pada menu: ");
        String? dtInput3 = stdin.readLineSync();
        jenisDosen = int.parse(dtInput3!);
        if (jenisDosen == 1) {
        } else if (jenisDosen == 2) {
        } else if (jenisDosen == 3) {}
      } else if (menu == 2) {}
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
        stdout.write('Jumlah kehadiran (per bulan): ');
      } else if (menu == 2) {}
    }
  } while (pilihan != 0);
}
