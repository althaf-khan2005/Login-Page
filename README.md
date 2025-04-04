# Flutter Firebase Login App

A simple and clean Flutter app with Firebase Authentication, featuring login, signup, and automatic authentication state handling.

## Features  
✅ Firebase Authentication (Login & Signup)  
✅ Auth Gateway (Checks login status)  
✅ Home Page Navigation after Login  
✅ Sign Out Functionality  
✅ Clean & Modern UI  

## Dependencies  
Add these dependencies to your `pubspec.yaml`:  
```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: latest_version
  firebase_auth: latest_version
```

## Project Structure  
```
/lib
│── main.dart
│── auth_gate.dart
│── login_page.dart
│── home_page.dart
│── auth_service.dart
```

## Authentication Flow  
1. **Login/Signup**: User enters credentials and taps the login button.  
2. **Auth Gateway**: Determines if the user is logged in and navigates accordingly.  
3. **Home Page**: If login is successful, the user is redirected to the Home Page.  
4. **Logout**: Users can log out using the sign-out button.  

## How to Run  
1. Clone the repo  
   ```sh
   git clone https://github.com/your-repo/flutter-firebase-login.git
   cd flutter-firebase-login
   ```
2. Install dependencies  
   ```sh
   flutter pub get
   ```
3. Run the app  
   ```sh
   flutter run
   ```

## Screenshots  
(Add some images of your login and home screens here)

## Contributing  
Pull requests are welcome. For major changes, open an issue first to discuss.  

## License  
MIT License  

