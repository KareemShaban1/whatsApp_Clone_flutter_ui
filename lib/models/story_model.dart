class StatusModel {
  final String name;
  final String time;
  final String imgPath;

  StatusModel({this.name, this.time, this.imgPath});
}

List<StatusModel> statusData = [
new StatusModel(
name: "Creative 1",
time: "Today, 15:30",
imgPath: "assets/images/img1.jpg" ),

  new StatusModel(
      name: "Creative 2",
      time: "Today, 11:30",
      imgPath: "assets/images/img2.jpg" ),

  new StatusModel(
      name: "Creative 3",
      time: "Today, 15:30",
      imgPath: "assets/images/img3.jpg" ),

  new StatusModel(
      name: "Creative 4",
      time: "Yesterday, 16:00",
      imgPath: "assets/images/img4.jpg" ),



];