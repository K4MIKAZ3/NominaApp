#!/bin/sh
# Gradle wrapper script for Linux/macOS
GRADLE_WRAPPER_JAR="gradle/wrapper/gradle-wrapper.jar"
GRADLE_WRAPPER_PROPERTIES="gradle/wrapper/gradle-wrapper.properties"

# Resolve app_home
APP_HOME=$(cd "$(dirname "$0")" && pwd -P)
cd "$APP_HOME" || exit 1

# Use JAVA_HOME if set, otherwise use system java
if [ -n "$JAVA_HOME" ]; then
    JAVA="$JAVA_HOME/bin/java"
else
    JAVA="java"
fi

# Check if wrapper jar exists, download if not
if [ ! -f "$GRADLE_WRAPPER_JAR" ]; then
    echo "Descargando Gradle wrapper..."
    mkdir -p gradle/wrapper
    curl -L "https://services.gradle.org/distributions/gradle-8.4-bin.zip" -o gradle/wrapper/gradle-8.4-bin.zip
    unzip -q gradle/wrapper/gradle-8.4-bin.zip -d gradle/wrapper/
fi

exec "$JAVA" -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" \
    org.gradle.wrapper.GradleWrapperMain "$@"
