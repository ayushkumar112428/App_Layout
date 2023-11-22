import 'package:flutter/material.dart';

class InstagramApp extends StatelessWidget {
  InstagramApp({
    super.key,
  });

  final List<Map<String, dynamic>> appdata = [
    {
      "user": {
        "name": "ayushpatel",
        "profileImage": "assets/instagram/Profile/man01.png"
      },
      "image": "assets/instagram/Post/post06.jpg",
      "likes": "harsh_gabani",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "ronak007",
        "profileImage": "assets/instagram/Profile/man02.jpg"
      },
      "image": "assets/instagram/Post/post01.jpg",
      "likes": "hiral24",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "jimitpatel",
        "profileImage": "assets/instagram/Profile/man03.jpg"
      },
      "image": "assets/instagram/Post/post03.jpg",
      "likes": "kahandakhara",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "kahandakhara",
        "profileImage": "assets/instagram/Profile/man04.jpg"
      },
      "image": "assets/instagram/Post/post04.jpg",
      "likes": "patelmayank",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "harshgabani",
        "profileImage": "assets/instagram/Profile/man05.jpg"
      },
      "image": "assets/instagram/Post/post05.jpg",
      "likes": "mayurpatel",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "shodhi01",
        "profileImage": "assets/instagram/Profile/man06.jpg"
      },
      "image": "assets/instagram/Post/post02.jpg",
      "likes": "harsh_gabani",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "rosan23",
        "profileImage": "assets/instagram/Profile/man07.jpg"
      },
      "image": "assets/instagram/Post/post07.jpg",
      "likes": "ronak007",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "patelmayank",
        "profileImage": "assets/instagram/Profile/man08.jpg"
      },
      "image": "assets/instagram/Post/post08.jpg",
      "likes": "ayushpatel",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "ramlal01",
        "profileImage": "assets/instagram/Profile/man09.jpg"
      },
      "image": "assets/instagram/Post/post09.jpg",
      "likes": "harsh_gabani",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "hiral24",
        "profileImage": "assets/instagram/Profile/woman10.jpg"
      },
      "image": "assets/instagram/Post/post10.jpg",
      "likes": "harsh_gabani",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
    {
      "user": {
        "name": "maitripatel",
        "profileImage": "assets/instagram/Profile/woman11.jpg"
      },
      "image": "assets/instagram/Post/post11.jpg",
      "likes": "harsh_gabani",
      "caption":
          "CarInfo is your all-in-one app for all your vehicle related utilities. Manage all your vehicles in one place. - Pollution and insurance check, license and RTO challan details.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 28,
          ),

          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: appdata.length,
              itemBuilder: (BuildContext context, int index) {
                return story(appdata[index]);
              },
            ),
          ),

          const Divider(color: Colors.grey,),

          Expanded(
            child: ListView.builder(
              itemCount: appdata.length,
              itemBuilder: (BuildContext context, int index) {
                return buildPostCard(context, appdata[index], wsize);
              },
            ),
          ),
          
        ],
      ),
    );
  }

  Padding story(Map<String, dynamic> users) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(users['user']['profileImage']!),
              ),
              border: Border.all(
                width: 1,
                style: BorderStyle.solid,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            users['user']['name'],
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget buildPostCard(
      BuildContext context, Map<String, dynamic> post, double wsize) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildUserInfoTile(post['user']),
              const Icon(
                Icons.more_vert_sharp,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Image.asset(
            post['image'],
            width: wsize,
            height: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 7,
          ),
          buildPostIcons(),
          const SizedBox(
            height: 7,
          ),
          buildRichText(post['likes']),
          const SizedBox(
            height: 7,
          ),
          Text(
            post['caption'],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget buildUserInfoTile(Map<String, dynamic> user) {
    return Column(
      children: [
        Row(
          children: [
            buildProfileImage(user['profileImage']),
            const SizedBox(width: 7),
            Text(
              user['name'],
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildProfileImage(String profileImagePath) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black54, width: 1),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(profileImagePath),
        ),
      ),
    );
  }

  Widget buildPostIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(width: 7,),
                Image.asset("assets/icons/chat.png", height: 22, width: 22),
                const SizedBox(width: 7,),
                Image.asset("assets/icons/send.png", height: 22, width: 22),
              ],
            )
          ],
        ),
        const Icon(
          Icons.bookmark_border_outlined,
          color: Colors.white,
          size: 28,
        ),
      ],
    );
  }

  Widget buildRichText(String name) {
    return RichText(
      text: TextSpan(
        text: "Liked by ",
        style: const TextStyle(color: Colors.white),
        children: [
          TextSpan(
            text: name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const TextSpan(
            text: " and other",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
