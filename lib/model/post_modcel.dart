class Post {
  String? userId;
  String? title;
  String? content;
  String? date;


  Post(this.userId, this.title, this.content, this.date,);

  Post.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        title = json["title"],
        content = json['content'],
        date = json['date'];

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'title' : title,
    'content': content,
    'date': date,
  };
}