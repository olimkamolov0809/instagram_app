import 'package:flutter/material.dart';
import 'package:instagram_app/models/post_model.dart';

class MyFeedPage extends StatefulWidget {
  static final String id = 'my_feed_page';

  const MyFeedPage({Key? key}) : super(key: key);

  @override
  State<MyFeedPage> createState() => _MyFeedPageState();
}

class _MyFeedPageState extends State<MyFeedPage> {
  bool isLoading = false;

  List<Post> items = [];
  String _image_1 =
      "https://images.unsplash.com/photo-1505022610485-0249ba5b3675";
  String _image_2 =
      "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d";
  String _image_3 =
      "https://images.unsplash.com/photo-1520183802803-06f731a2059f";

  @override
  void initState() {
    super.initState();
    items.add(Post(_image_1, 'I like photo'));
    items.add(Post(_image_2, 'It is the best photo'));
    items.add(Post(_image_3, 'I have ever see'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'I n s t a g r a m',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontFamily: "Billabong"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
        ],
      ),
      /*body: Stack(
        children: [
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (ctx, index){
              return _itemOfPost(items[index]);
            },
          ),
          isLoading ? Center(
             child: CircularProgressIndicator(),
          ): SizedBox.shrink(),
        ],
      ),*/
    );
  }

/* Widget _itemOfPost(Post post){
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Divider(),

          // #user info
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: AssetImage('assets/images/insta1.png'),
                        width: 40,
                        height: 40,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Kamolov Zoxid',style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text('2023-01-17 10:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          // #post images
          SizedBox(height: 8),
          CachedNetworkImage(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            imageUrl: post.img_post,
            placeholder: (context, url) =>Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
  */
}
