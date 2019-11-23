class Oferta {
  String titulo;
  String descricao;

  Oferta({this.titulo, this.descricao});
  
  Oferta.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    data['descricao'] = this.descricao;
    return data;
  }
}