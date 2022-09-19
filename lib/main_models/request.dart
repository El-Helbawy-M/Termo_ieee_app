class RequestModel {
  String? name;
  String? location;
  String? createData;
  String? customerId;
  String? state;
  String? description;
  String? reciverId;
  String? imageLink;

  RequestModel(
      {this.location,
      this.createData,
      this.name,
      this.customerId,
      this.state,
      this.description,
      this.reciverId,
      this.imageLink,
      });

  RequestModel.fromjson(Map<String, dynamic>? json) {
    name = json!['name'];
    location = json['location'];
    createData = json['create_data'];
    customerId = json['customer_id'];
    state = json['state'];
    description = json['description'];
    reciverId = json['recever_id'];
    imageLink = json['image_linke'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'location': location,
      'create_data': createData,
      'customer_id': customerId,
      'state': state,
      'description': description,
      'recever_id': reciverId,
      'image_linke': imageLink,
    };
  }
}
