class memberModel {
  final String name;
  final String time;
  final String date;
  final String? imageUrl;
  bool isSelected;


  memberModel({
    required this.name,
    required this.time,
    required this.date,
    this.imageUrl,
     this.isSelected = false,
  });
}
