class Support {
  String? url;
  String? text;

  Support({
    this.url,
    this.text,
  });

  Support.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'url': url,
      'text': text,
    };

    return data;
  }

  @override
  String toString() {
    return 'Support {url: $url, text: $text}';
  }
}