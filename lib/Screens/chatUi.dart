import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/appConstant.dart';

class MyChatUI extends StatelessWidget {
  const MyChatUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0B1014),
      appBar: AppBar(
        backgroundColor: Color(0XFF0B1014),
        foregroundColor: Colors.white,
        title: Text(
          "WhatsApp",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Icon(Icons.qr_code_2_outlined),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.camera_alt_outlined),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0XFF23282C),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0XFF6E787B),
                  ),
                  hintText: 'Ask Meta AI or Search',
                  hintStyle: TextStyle(
                      color: Color(0XFF797E82),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: AppConstant.myChatsData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        spacing: 10,
                        children: [
                          SizedBox(
                            height: 55,
                            width: 55,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  AppConstant.myChatsData[index]['profileUrl']),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppConstant.myChatsData[index]['name'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  AppConstant.myChatsData[index]['chat'],
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Color(0XFF94999E), fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                AppConstant.myChatsData[index]['time'],
                                style: TextStyle(
                                    color: Color(0XFF94999E), fontSize: 18),
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0XFF00D55B)),
                                child: Text(
                                  AppConstant.myChatsData[index]['messageCount']
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
