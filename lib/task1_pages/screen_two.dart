import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child:  ListView.builder(
    // primary: false,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 10,
    itemBuilder: (BuildContext context, index) {
    return
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child:InkWell(
            onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    border: Border.all(color: Color(0xffEFF0F6))),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                        EdgeInsets.only(top: 6, bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              "nid",
                              style:  TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "#5555555555",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Spacer(),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)),
                                color: Color(0xffEFF0F6),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'বাংলা. বাংলা',
                                maxLines: 2,
                                style: TextStyle(fontSize: 8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '012558855885',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '0125555555',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'sdj sjbdsb sahj',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "ind",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "45500000000000000",
                          ),
                          Spacer(),
                          Text(
                            "বিস্তারিত",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            IconData(0xe09c, fontFamily: 'MaterialIcons', matchTextDirection: true),
                            color: Colors.black,
                            size: 16.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
    }),
        ),
      ),
    );
  }
}
