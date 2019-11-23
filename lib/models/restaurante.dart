class Restaurante {
  String nome;
  //String localizacao;
  //double classificacao;

  Restaurante({this.nome});
  
  Restaurante.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    return data;
  }
}