@rem Gradle wrapper script for Windows
@echo off
setlocal

set APP_HOME=%~dp0
set JAVA_EXE=java.exe

%JAVA_EXE% -classpath "%APP_HOME%\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
