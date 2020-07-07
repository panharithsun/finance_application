class Category {
  String name;
  String imageUrl;
  int id;

  Category({
    this.id,
    this.name,
    this.imageUrl,
  });
}
List<Category> categories = [
  Category(
    id: 1,
    name: 'Bills',
    imageUrl: 'assets/icons/bill.png'
  ),
  Category(
    id: 2,
    name: 'Foods',
    imageUrl: 'assets/icons/food.png'
  ),
  Category(
    id: 3,
    name: 'Travels',
    imageUrl: 'assets/icons/vehicle.png'
  ),
  Category(
    id: 4,
    name: 'Essentials',
    imageUrl: 'assets/icons/toiletries.png'
  )
];