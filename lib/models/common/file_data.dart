
class FileData {
    FileData({
        required this.filename,
        required this.filepath,
    });

    String filename;
    String filepath;

    factory FileData.fromJson(Map<String, dynamic> json) => FileData(
        filename: json["filename"],
        filepath: json["filepath"],
    );

    Map<String, dynamic> toJson() => {
        "filename": filename,
        "filepath": filepath,
    };
}
