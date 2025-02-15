import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ReportAttendanceController extends GetxController {
  var selectedEmployee = RxnString(); // Nama karyawan yang dipilih
  var selectedDate = "".obs; // Tanggal yang dipilih

  // Dummy data nama karyawan (ambil dari MemberController jika sudah ada)
  var members =
      ["udin", "jamal", "dobleh", "Lee Jae Wook", "barto", "paulo"].obs;

  // List bulan dinamis
  var months = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    generateMonths(); // Generate daftar bulan saat controller diinisialisasi
  }

  void generateMonths() {
    DateTime now = DateTime.now();

    // Menambahkan 4 bulan ke belakang
    for (int i = 4; i > 0; i--) {
      DateTime month = DateTime(now.year, now.month - i, 1);
      months.add(DateFormat("MMMM yyyy").format(month));
    }

    // Menambahkan bulan saat ini + 1 bulan ke depan
    for (int i = 0; i < 2; i++) {
      DateTime month = DateTime(now.year, now.month + i, 1);
      months.add(DateFormat("MMMM yyyy").format(month));
    }

    selectedDate.value = months[3]; // Default ke bulan saat ini
  }
}
