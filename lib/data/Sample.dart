
import 'package:walkie_test02/models/Collocation.dart';
import 'package:walkie_test02/models/Post.dart';
import 'package:walkie_test02/models/User.dart';


class Sample{
   static User seong_il = new User(
       name: "Seong il",
       profilePicture: "assets/pics/normal01.jpg",
       username: "@woosi",
       followers: 46,
       following: 56,
       collocation: [
         new Collocation(
          name:"Photography",
           tags: [
             "HD photos",
             "Weather",
             "Photography"
           ],
           thumbnail: "assets/pics/one.jpg",
             posts: [
                new Post(
                  location: "Taibei, Taiwan",
                  dateAgo: "3 hours ago",
                  photos: [
                    'assets/pics/one.jpg',
                    'assets/pics/two.jpg',
                    'assets/pics/three.jpg',
                  ]
              ),
              new Post(
                location: "Incheon, Korea",
                dateAgo: "2 month ago",
                photos: [
                  'assets/pics/four.jpg',
                  'assets/pics/five.jpg',
                  'assets/pics/six.jpg',
                ]
              )
             ]
          ),
       ],
   );
   static User hanho = new User(
     name: "Han ho",
     profilePicture: "assets/pics/hanho.jpg",
     username: "@gugu",
     followers: 46,
     following: 56,
     collocation: [
       new Collocation(
           name:"Photography",
           tags: [
             "HD photos",
             "Weather",
             "Photography"
           ],
           thumbnail: "assets/pics/ten.jpg",
           posts: [
             new Post(
                 location: "seoul, Korea",
                 dateAgo: "7 hours ago",
                 photos: [
                   'assets/pics/five.jpg',
                   'assets/pics/six.jpg',
                   'assets/pics/seven.jpg',
                 ]
             ),
             new Post(
                 location: "paris, France",
                 dateAgo: "3 month ago",
                 photos: [
                   'assets/pics/four.jpg',
                   'assets/pics/five.jpg',
                   'assets/pics/six.jpg',
                 ]
             )
           ]
       ),
     ],
   );

   static Post postOne = new Post(
    user: seong_il,
     location: "Taibei, Taiwan",
     dateAgo: "3 hours ago",
     photos: [
       'assets/pics/one.jpg',
       'assets/pics/two.jpg',
       'assets/pics/three.jpg',
     ],
     relatedPhotos: [
       'assets/pics/two.jpg',
       'assets/pics/three.jpg',
       'assets/pics/five.jpg',
       'assets/pics/six.jpg',
       'assets/pics/eight.jpg',
     ]
   );
   static Post postTwo = new Post(
       user: hanho,
       location: "seoul, Korea",
       dateAgo: "7 hours ago",
       photos: [
         'assets/pics/six.jpg',
         'assets/pics/seven.jpg',
         'assets/pics/eight.jpg',

       ],
       relatedPhotos: [
         'assets/pics/seven.jpg',
         'assets/pics/eight.jpg',
         'assets/pics/one.jpg',
         'assets/pics/two.jpg',
         'assets/pics/three.jpg',
       ]
   );
}