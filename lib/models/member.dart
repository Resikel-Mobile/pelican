class memberModel {
  final String name;
  final String time;
  final String date;
  final String? imageUrl;
  final String category;
  bool isSelected;


  memberModel({
    required this.name,
    required this.time,
    required this.date,
    this.imageUrl,
      this.category = "Staff",
     this.isSelected = false,
  });
}
