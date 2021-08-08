import 'package:flutter/material.dart';
import 'package:movie_app/services/api_service.dart';
import 'package:movie_app/widgets/MovieCardScrollable.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key key}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ApiService.getTrendingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Movie',
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
      body: Container(
        // color: Colors.green,
        padding: EdgeInsets.only(
          left: 15.0,
          top: 10.0,
          bottom: 15.0,
        ),
        child: Column(
          children: [
            Container(
              height: 300.0,
              width: double.infinity,
              // color: Colors.red,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MovieCardScrollable(
                    imageLink:
                        'https://m.media-amazon.com/images/M/MV5BN2JlZTBhYTEtZDE3OC00NTA3LTk5NTQtNjg5M2RjODllM2M0XkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg',
                    movieName: 'The Little Mermaid',
                  ),
                  MovieCardScrollable(
                    imageLink:
                        'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/WALL-Eposter.jpg/220px-WALL-Eposter.jpg',
                    movieName: 'WALL-E',
                  ),
                  MovieCardScrollable(
                    imageLink:
                        'https://lumiere-a.akamaihd.net/v1/images/pp_findingnemo_herobannermobile_19752_7810e507.jpeg?region=0,0,640,480',
                    movieName: 'Find Nemo',
                  ),
                  MovieCardScrollable(
                    imageLink:
                        'https://m.media-amazon.com/images/M/MV5BN2JlZTBhYTEtZDE3OC00NTA3LTk5NTQtNjg5M2RjODllM2M0XkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg',
                    movieName: 'The Little Mermaid',
                  ),
                  MovieCardScrollable(
                    imageLink:
                        'https://image.tmdb.org/t/p/original//lSEr1nphZuCqXli3VziIgCI8Ivf.jpg',
                    movieName: 'The Little Mermaid',
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1.0,
            ),
            Expanded(
              child: Container(
                height: 300.0,
                width: double.infinity,
                // color: Colors.blue,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.yellow,
                        child: Row(
                          children: [
                            Container(
                              height: 180.0,
                              width: 130.0,
                              child: Card(
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToUI6RSHFJ1FQeey-94XH_Qn4PLOCpyHkBSrndFPp1bDofAWwyHcmw1_sZrN1DZg5gk40&usqp=CAU',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Ghost in the Shell'),
                                  Text('Mar 31, 2017 - US'),
                                  Text('1h 37 min'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.yellow,
                        child: Row(
                          children: [
                            Container(
                              height: 180.0,
                              width: 130.0,
                              child: Card(
                                child: Image.network(
                                  'https://m.media-amazon.com/images/I/51-difUGanL.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Find Nemo'),
                                  Text('Mar 30, 2003 - US'),
                                  Text('1h 30 min'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
