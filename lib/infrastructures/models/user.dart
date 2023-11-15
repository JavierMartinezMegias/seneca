import 'dart:convert';

List<Usuario> userFromJson(String str) => List<Usuario>.from(json.decode(str).map((x) => Usuario.fromJson(x)));

String userToJson(List<Usuario> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Usuario {
    String id;
    String email;
    String nombre;

    Usuario({
        required this.id,
        required this.email,
        required this.nombre,
    });

    factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        id: json["id"],
        email: json["email"],
        nombre: json["nombre"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "nombre": nombre,
    };
}

