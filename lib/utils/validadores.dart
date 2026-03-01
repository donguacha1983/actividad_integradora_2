class Validadores {
  static String? validarNombre(String? valor) {
    if (valor == null || valor.isEmpty) return 'El nombre es requerido';
    if (valor.length < 3) return 'Mínimo 3 caracteres';
    return null;
  }

  static String? validarEmail(String? valor) {
    if (valor == null || valor.isEmpty) return 'El email es requerido';
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(valor)) return 'Email inválido';
    return null;
  }

  static String? validarEdad(String? valor) {
    if (valor == null || valor.isEmpty) return 'La edad es requerida';
    final edad = int.tryParse(valor);
    if (edad == null) return 'Número inválido';
    if (edad < 18) return 'Debes ser mayor de 18 años';
    if (edad > 120) return 'Edad inválida';
    return null;
  }

  static String? validarTelefono(String? valor) {
    if (valor == null || valor.isEmpty) return 'El teléfono es requerido';
    final telefonoRegex = RegExp(r'^\+?[\d\s-]{10,}$');
    if (!telefonoRegex.hasMatch(valor)) return 'Teléfono inválido';
    return null;
  }
}
