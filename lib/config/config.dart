import 'package:raaz/config/app_templates.dart';
import 'package:raaz/config/template.dart';
import 'package:raaz/models/tag.dart';

class Config {
  static int initialTab = 0;
  static List<Tag> defaultTagList = [
    Tag(name: "Travel"),
    Tag(name: "Cooking"),
    Tag(name: "Education"),
    Tag(name: "Politics"),
    Tag(name: "Family"),
  ];
  static Template template = AppTemplates.browny;
  static bool darkMode = false;
  static List<String> dummyProfilePics = imageList;
  static List<String> dummyNames = names;
}

List<String> imageList = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqdsQcC6GiAfLUKw3l6C4qooLqrx_ZA_3FQRPfBaH6HKJLcWabCkeV50YkqHsIfGOQHtI&usqp=CAU",
  "https://media.istockphoto.com/photos/portrait-of-a-man-picture-id829836994?b=1&k=20&m=829836994&s=170667a&w=0&h=5cAgkpNltzwlgruwOPSYB7CAWZ8HPQPHOedoz1G3TuE=",
  "https://www.morganstanley.com/content/dam/msdotcom/people/tiles/isaiah-dwuma.jpg.img.380.medium.jpg/1594668408164.jpg",
  "https://images.squarespace-cdn.com/content/v1/5416b734e4b0f910e31345fb/1449684896502-06F3ID8PBOB20TECV9BI/image-asset.jpeg",
  "http://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-1024x1024.jpg"
];

List<String> names = [
  "Rebert",
  "Steve",
  "Jonathan",
  "Charlie",
  "Herlin",
];
