class WallpaperModel{

  String photographer;
  String photographer_url;
  String photographer_id;
  SrcModel src;

  WallpaperModel({required this.src,required this.photographer_url,required this.photographer_id,required this.photographer});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
        src: SrcModel.fromMap(jsonData["src"]),
        photographer_url: jsonData["photographer_url"],
        photographer_id: jsonData["photographer_id"].toString(),
        photographer: jsonData["photographer"]
    );
  }


}

class SrcModel{

  String original;
  String small;
  String portrait;

  SrcModel({required this.portrait,required this.original,required this.small});

  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
      portrait: jsonData["portrait"],
      original: jsonData["original"],
      small: jsonData["small"]
    );
  }

}