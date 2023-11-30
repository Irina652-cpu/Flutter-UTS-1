import 'package:flutter/material.dart';
import 'package:mental_healthapp/util/emoticon_faces.dart';
import 'package:mental_healthapp/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat ), label: ''),
            
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UMKT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '28 November 2023',
                          style: TextStyle(color: Colors.blue[200]),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                //Search Bar
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.red),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                //how do you feel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Give Your Reaction about my application',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
    
                // 4 different faces
    
                //bad
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😡', // Emotikon pertama
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    //fine
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😌 ', // Emotikon pertama
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Not bad',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    //well
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😊', // Emotikon pertama
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'good',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    //Excellent
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😇', // Emotikon pertama
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'very good',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.grey[200],
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'UMKT Mental Health',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //LISTVIEW
                          Expanded(child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Pendaftaran',
                                numberOfExercises: 16,
                                color: Colors.blue,
                              ),
                              ExerciseTile(
                                  icon: Icons.person,
                                   exerciseName: 'Pengaduan Layanan',
                                  numberOfExercises: 16,
                                  color: Colors.red,
                              ),
                              ExerciseTile(
                                 icon: Icons.star,
                                exerciseName: 'Info Program',
                                numberOfExercises: 16,
                                color: Colors.yellow
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
