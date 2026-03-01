//Clase base de usuario
class Usuario {
  int? id;
  String nombre;
  String email;
  int edad;
  String telefono;
  String? fotoPerfil;

  //Constructor de clase usuario
  Usuario({
    this.id,
    required this.nombre,
    required this.email,
    required this.edad,
    required this.telefono,
    this.fotoPerfil,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'email': email,
      'edad': edad,
      'telefono': telefono,
      'fotoPerfil': fotoPerfil,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'],
      nombre: map['nombre'],
      email: map['email'],
      edad: map['edad'],
      telefono: map['telefono'],
      fotoPerfil: map['fotoPerfil'],
    );
  }

  @override
  String toString() {
    return 'Usuario{id: $id, nombre: $nombre, email: $email}';
  }
}
