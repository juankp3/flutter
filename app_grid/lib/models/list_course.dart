class ListCourseModel {
  int? id;
  String? name;
  String? price;
  String? schedule;
  String? background;

  ListCourseModel({
    this.id,
    this.name,
    this.price,
    this.schedule,
    this.background,
  });
}

List<ListCourseModel> courses = [
  ListCourseModel(
    id: 1,
    name: "Android Developer",
    price: "\$50",
    schedule: "8 hours, 20min",
    background: "assets/android.png",
  ),
  ListCourseModel(
    id: 2,
    name: "Mobile Apps With Swift",
    price: "\$50",
    schedule: "9 hours, 48min",
    background: "assets/android.png",
  ),

  ListCourseModel(
    id: 3,
    name: "Mobile Apps With Swift",
    price: "\$50",
    schedule: "9 hours, 48min",
    background: "assets/android.png",
  ),

  ListCourseModel(
    id: 4,
    name: "Mobile Apps With Swift",
    price: "\$50",
    schedule: "9 hours, 48min",
    background: "assets/android.png",
  ),
];