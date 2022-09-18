import 'package:photomapalbummobile/model/album/album_entry.dart';

class Album {
  late String id;
  late String title;
  late String userId;
  late DateTime creationDate;

  Album(this.id, this.title, this.userId, this.creationDate);
}
