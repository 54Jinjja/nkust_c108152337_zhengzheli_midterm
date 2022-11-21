import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),
              label: 'Introduce',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.abc),
              label: 'Learning',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance),
              label: 'Plan',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          onTap: (index) { setState(() {
            _currentindex=index;
            if (index!=0) {
              player.stop();
            }
          });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我出生在一個幸福美滿的家庭，'
      '家中有五個成員，父親、母親、奶奶、弟弟和我。'
      '父母對我及弟弟的管教方式要我們獨立自主，在課業上能主動學習，'
      '但遇到困難與挫折時，他們也會適時給予鼓勵和建議。'
      '而我目前就讀國立高雄科技大學電子工程系資訊組，是大學四年級的學生。';

  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("music1.mp3"));
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text("Who am I ?",
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.bold,)),
          ),

          //放一張照片
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/myphoto.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/lesson.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),


          SizedBox(height: 30,),
          Container(
            child: Text('Autobiography',style: TextStyle(fontSize: 30,color: Colors.deepPurpleAccent,fontWeight:FontWeight.bold,),),
          ),
          SizedBox(height: 10,),

          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.greenAccent,
                  offset: Offset(3, 3)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),


          //一列放兩個圖
          /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  final String s1='在國小、國中時期，我的學業成績算是表現良好，都能夠維持在班排前三名。'
      '當時因為不喜歡枯燥乏味的社會科目，所以選擇才進入高職並就讀電子系，'
      '並非像是身旁同學、朋友進入高中就讀。'
      '進入高職後，起初並不能適應，因為基本電學及電子學等專業科目對我來說皆是前所未見，'
      '但我相信能靠著努力的學習去彌補，從剛開始一無所知，漸漸地能夠駕輕就熟。'
      '而這三年的學業成績，我也都能保持在前二名，並且拿到了市長獎。'
      '大一時，系上早已安排好滿滿的必修理論課程，幾乎沒有多餘的時間能夠選修其他專業課程，'
      '於是在課業上則要求自己達到中上水平即可。到了大二、大三時，有了足夠的時間能夠選修，'
      '因此便選擇了一些較有興趣的課程，像是FPGA、影像處理、電腦視覺、APP程式設計等。';

  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("music2.mp3"));
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("學習歷程",
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepPurpleAccent, width: 4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.cyan,
                  offset: Offset(3, 3)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/p2.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    player.play(AssetSource("music3.mp3"));
    return Container(
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('大四時期和未來研究所計畫',style: TextStyle(fontSize: 30),),
            ],
          ),
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: 410,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pinkAccent, width: 3),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [ BoxShadow(color: Colors.purpleAccent,
                      offset: Offset(3, 3)),
                  ],),
                child: ListView(
                  children: [
                    Text('1. 近程計畫(大四~進入研究所前)',style: TextStyle(fontSize: 24),),
                    SizedBox(height: 15,),
                    Text('在大四上將大學畢業學分修滿，在大四下期間預先規劃碩士班修習課程。',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 5,),
                    Text('並將持續加強外語能力，通過英語能力檢定。',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 5,),
                    Text('在大學畢業後的暑假期間努力爭取實習機會，希望能夠累積相關實務經驗。',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 30,),
                    Text('2. 中程計畫(碩士班期間)',style: TextStyle(fontSize: 24),),
                    SizedBox(height: 15,),
                    Text('決定論文題目、研究方向，進行論文資料蒐集、研究、整理。',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 5,),
                    Text('完成畢業應修學分，撰寫論文並且通過口試，參加產學合作計畫。',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 30,),
                    Text('3. 遠程計畫(研究所畢業後)',style: TextStyle(fontSize: 24),),
                    SizedBox(height: 5,),
                    Text('考量狀況評估是否進入相關科技業工作或繼續學業深造。',style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  final String project='主要撰寫到的程式語言是Python。'
      '首先透過YOLOv4物件偵測模型進行車框辨識，'
      '接著取得車牌影像後使用影像處理和額外訓練的CNN字元辨識模型來得到車牌號碼。'
      '最後再搭配資料庫、LINE BOT做出其他推波應用，'
      '完成一整套車牌號碼辨識的停車場系統。';
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("music4.mp3"));
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("大學專題製作",
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.bold,)),
          ),
          Container(
            child: Text('專題簡述',style: TextStyle(fontSize: 24,color: Colors.indigo,fontWeight:FontWeight.bold,),),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(10, 0, 10, 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.redAccent,
                  offset: Offset(3, 3)),
              ],),
            child:Text(project,
              style: TextStyle(fontSize: 20),),
          ),
          Container(
            child: Text('實作成果',style: TextStyle(fontSize: 24,color: Colors.indigo,fontWeight:FontWeight.bold,),),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/p3.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/p4.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 200,
                height: 330,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/p5.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 200,
                height: 330,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/p6.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
