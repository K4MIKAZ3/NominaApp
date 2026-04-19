#!/bin/bash
# Este script descarga el Gradle wrapper JAR necesario para compilar
# Ejecutar UNA SOLA VEZ antes de ./gradlew

set -e
echo "📦 Descargando Gradle wrapper JAR..."
mkdir -p gradle/wrapper
curl -L "https://raw.githubusercontent.com/gradle/gradle/v8.4.0/gradle/wrapper/gradle-wrapper.jar" \
     -o gradle/wrapper/gradle-wrapper.jar
echo "✅ Gradle wrapper listo. Ahora ejecuta: ./gradlew assembleDebug"
