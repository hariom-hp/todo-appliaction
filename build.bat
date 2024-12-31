@echo off
echo Starting Android build process...

echo 1. Cleaning project...
flutter clean

echo 2. Getting dependencies...
flutter pub get

echo 3. Building APK...
cd android
call gradlew clean
cd ..
flutter build apk --release

echo Build process completed!
echo Your APK is located at: build/app/outputs/flutter-apk/app-release.apk

pause 