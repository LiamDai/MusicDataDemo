
import 'dart:math';

import 'package:collection/collection.dart';
import '../classes/classes.dart';

class ArtistsProvider {
  static ArtistsProvider get shared => ArtistsProvider();

  List<Artist> get artists => const [
        Artist(
          id: '01',
          name: '李健',
          image: MyArtistImage(
            image: 'assets/images/artists/singer.png',
            sourceLink: '',
            sourceName: '',
          ),
          bio:
              '李健，1974年9月23日出生于黑龙江省哈尔滨市，中国内地流行乐男歌手、音乐制作人，毕业于清华大学电子工程系。',
          updates: [
            '22年1月3日，李健受邀参加在海口世纪公园举办音乐会，本次音乐会以“心升明月”为主题'
          ],
          events: [
            Event(
                date: '1/20/23',
                title: '巡回演出',
                location: '北京',
                link: '购票'),
            Event(
                date: '1/22/23',
                title: '巡回演出',
                location: '上海',
                link: '购票'),
          ],
          news: [
            News(
              title:
                  '演出',
              author: '',
              blurb:
                  '22年1月3日，李健受邀参加在海口世纪公园举办音乐会，本次音乐会以“心升明月”为主题',
              image: MyArtistImage(
                image: 'assets/images/news/concert.jpeg',
                sourceLink: 'https://unsplash.com/photos/hzgs56Ze49s',
                sourceName: 'Anthony DELANOIX',
              ),
            )
          ],
        ),
        Artist(
          id: 'lb',
          name: 'Lucas Bryant',
          image: MyArtistImage(
            image: 'assets/images/albums/artist1-album2.jpg',
            sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
            sourceName: 'Keagan Henman',
          ),
          bio:
              'Lucas Bryant is an American country music singer and songwriter. He moved to Nashville at the age of 18 to pursue his country music career. With 34 awards to his name, he currently holds the record for most awards in country music.',
          updates: [
            'Who\'s ready to party this weekend?! See you tomorrow, Nashville! #LBlive',
            'Can\'t wait to get back on stage after so long. What songs do you want to hear?',
            'We\'re going all in this weekend! How are you doing, Vegas?!',
          ],
          events: [
            Event(
                date: '5/16/22',
                title: 'Back To My Hometown Tour',
                location: 'Indianapolis, IN',
                link: 'Tickets'),
            Event(
                date: '5/18/22',
                title: 'Back To My Hometown Tour',
                location: 'San Antonio, TX',
                link: 'Tickets'),
          ],
          news: [
            News(
              title:
                  'Country Music Favorites Lucas Bryant, Mariam Lubbock, Michelle Delaney and Jackson Murray Join Forces For The Biggest Performance in Country History.',
              author: 'Lonnie Hall',
              blurb:
                  'Calling all country music fans! Fasten your seat belts because the 2022 Best of Country Awards is expecting a huge performance from some of our favorite artists. Country music legends Mariam Lubbock and Jackson Murray will be joined by Lucas Bryant and Michelle Delaney for a performance we\'ll never forget.',
              image: MyArtistImage(
                image: 'assets/images/albums/artist1-album2.jpg',
                sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
                sourceName: 'Keagan Henman',
              ),
            ),
          ],
        ),
        Artist(
          id: 'cjy',
          name: '陈洁仪',
          image: MyArtistImage(
            image: 'assets/images/artists/singer2.png',
            sourceLink: 'https://unsplash.com/photos/k7UKO-tT5QU',
            sourceName: 'Natalie Runnerstrom',
          ),
          bio:
              '陈洁仪（Kit Chan），1972年9月15日出生于新加坡，华语流行乐女歌手、影视演员，毕业于新加坡拉萨尔艺术学院戏剧表演学系。',
          updates: [
            '2015年作为首发歌手参加湖南卫视《我是歌手》第三季。2016年推出第11张个人国语专辑《天堂边缘》'
          ],
          events: [
            Event(
                date: '1/20/23',
                title: '巡回演出',
                location: '北京',
                link: '购票'),
            Event(
                date: '1/22/23',
                title: '巡回演出',
                location: '上海',
                link: '购票'),
          ],
          news: [
            News(
              title:
                  '歌手新闻',
              author: '知名媒体',
              blurb:
                  '2015年作为首发歌手参加湖南卫视《我是歌手》第三季。2016年推出第11张个人国语专辑《天堂边缘》',
              image: MyArtistImage(
                  image: 'assets/images/news/recording_studio.jpg',
                  sourceLink: 'https://unsplash.com/photos/CbOGmLA46JI',
                  sourceName: 'Yohann LIBOT'),
            )
          ],
        ),
      ];

  Artist? getArtist(String id) {
    return artists.firstWhereOrNull((artist) => artist.id == id);
  }

  Artist get randomArtist => artists[Random().nextInt(artists.length)];
}
