# 📱 NóminaApp — Proyecto Android

App de calculadora de nómina colombiana empaquetada como APK Android nativo.

---

## ⚡ MÉTODO MÁS FÁCIL — GitHub Actions (sin instalar nada)

Obtén el APK **completamente gratis** en ~3 minutos usando GitHub:

### Paso a paso:

1. **Crea una cuenta en [github.com](https://github.com)** (gratis)

2. **Crea un repositorio nuevo:**
   - Click en "+" → "New repository"
   - Nombre: `NominaApp`
   - Público o privado (cualquiera)
   - Click "Create repository"

3. **Sube este proyecto:**
   ```bash
   cd NominaApp
   git init
   git add .
   git commit -m "NóminaApp inicial"
   git remote add origin https://github.com/TU_USUARIO/NominaApp.git
   git push -u origin main
   ```

4. **GitHub compila automáticamente el APK:**
   - Ve a tu repo → pestaña **"Actions"**
   - Verás el workflow "Build NóminaApp APK" corriendo
   - En ~3 minutos verás ✅

5. **Descarga el APK:**
   - Click en el workflow completado
   - En la sección **"Artifacts"** → descarga `NominaApp-debug`
   - Descomprime el ZIP → tienes el `.apk`

6. **Instala en tu Android:**
   - Pasa el APK a tu teléfono (WhatsApp, Drive, USB, etc.)
   - Ajustes → Seguridad → **"Fuentes desconocidas"** ✅
   - Abre el APK e instala

---

## 🖥️ MÉTODO 2 — Android Studio (local)

1. Descarga **[Android Studio](https://developer.android.com/studio)** (gratis, ~1 GB)
2. Instala y ábrelo → Open → selecciona esta carpeta `NominaApp/`
3. Espera que sincronice Gradle (~5 min, descarga automática)
4. **Build → Build APK(s)**
5. El APK queda en: `app/build/outputs/apk/debug/app-debug.apk`

---

## 💻 MÉTODO 3 — Línea de comandos (Linux/Mac/WSL)

```bash
# 1. Instalar Android SDK command line tools
sudo apt install android-sdk   # Ubuntu/Debian
# o descarga desde https://developer.android.com/studio#command-tools

# 2. Aceptar licencias
yes | sdkmanager --licenses

# 3. Compilar
cd NominaApp
chmod +x bootstrap_wrapper.sh && ./bootstrap_wrapper.sh
./gradlew assembleDebug

# APK generado en:
# app/build/outputs/apk/debug/app-debug.apk
```

---

## 📂 Estructura del proyecto

```
NominaApp/
├── app/
│   └── src/main/
│       ├── AndroidManifest.xml       ← Configuración de la app
│       ├── assets/
│       │   └── index.html            ← Tu NóminaApp completa
│       ├── java/com/berrocal/nominaapp/
│       │   └── MainActivity.java     ← Carga el HTML en WebView
│       └── res/
│           ├── layout/activity_main.xml
│           ├── values/{strings,colors,styles}.xml
│           └── mipmap-*/             ← Iconos de la app
├── .github/workflows/build.yml       ← CI/CD automático
├── build.gradle
├── settings.gradle
├── gradlew                           ← Build Unix
└── gradlew.bat                       ← Build Windows
```

---

## 📋 Detalles técnicos

| Campo | Valor |
|-------|-------|
| Package ID | `com.berrocal.nominaapp` |
| Nombre | NóminaApp |
| Min Android | 5.0 (API 21) |
| Target Android | 14 (API 34) |
| Permisos | INTERNET (Google Fonts) |
| Almacenamiento | localStorage (datos guardados localmente) |
| Orientación | Portrait |

---

## ❓ Problemas comunes

**"App no instalada"** → Activa "Fuentes desconocidas" en Ajustes → Seguridad

**Fuentes no cargan** → Normal sin internet; la app funciona igual, solo sin tipografía custom

**Datos perdidos** → Los datos usan localStorage del WebView; no desinstales sin exportar primero
