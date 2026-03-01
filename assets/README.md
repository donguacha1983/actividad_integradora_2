Coloca aquí tu icono de la app.

Instrucciones:
- Añade un archivo PNG llamado `icon.png` en esta carpeta.
- Recomendado: 1024x1024 px, fondo transparente o color sólido según prefieras.
- Luego ejecuta desde la raíz del proyecto:

```bash
flutter pub get
flutter pub run flutter_launcher_icons:main
```

Esto generará los recursos de icono para Android e iOS.

Si prefieres, sustituye manualmente los PNG en `android/app/src/main/res/mipmap-*` y en `ios/Runner/Assets.xcassets/AppIcon.appiconset/`.
