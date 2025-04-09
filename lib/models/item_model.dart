class ItemModel {
  ItemModel({
    required this.title,
    required this.price,
    required this.image,
    required this.comment,
    this.onPressed,
  });

  final void Function()? onPressed;
  final String title;
  final int price;
  final String image;
  final String comment;
}
