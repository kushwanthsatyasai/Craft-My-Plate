﻿# Craft-My-Plate
# CraftMyPlate - Flutter Event Planning & Catering App

A beautiful Flutter mobile application for event planning and catering services, built from Figma designs with modern UI/UX principles and responsive design.

## 📱 Features

### ✨ Core Functionality
- **Animated Splash Screen** with smooth transitions and modern gradients
- **Authentication System** with login/register functionality
- **Firebase Integration** with fallback handling for web compatibility
- **Event Categories** with 14+ event types (Wedding, Birthday, House Party, etc.)
- **Interactive Event Cards** with polished horizontal carousel design
- **Wedding Details Screen** with segmented pill tabs and responsive design
- **Category Filtering** with functional tabs (ALL, Breakfast, Lunch & Dinner, Snacks)
- **Shopping Cart** with platter selection and view cart functionality

### 🎨 Design Features
- **Modern UI Design** following Figma specifications exactly
- **Custom Color Palette**: Primary Purple (#6318AF), Accent Pink (#E70472), Background (#F5F6FB)
- **Google Fonts Integration**: Inter and Lexend fonts for typography
- **Responsive Layout** adapting to different screen sizes
- **Dark Overlays & Gradients** for better text readability
- **Elevated Cards** with subtle shadows and rounded corners
- **Smooth Animations** throughout the app

### 📱 Responsive Design
- **Multi-device Support**: Tested on Pixel 7, Pixel Tablet, and Pixel 4a
- **Flexible Layouts** that adapt to different screen widths
- **Responsive Typography** with proper scaling
- **Touch-friendly Interfaces** optimized for mobile interaction

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Android Studio or VS Code with Flutter extensions
- Android device or emulator for testing
- Git for version control

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/kushwanthsatyasai/Craft-My-Plate.git
   cd Craft-My-Plate/events_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   # For web (Chrome)
   flutter run -d chrome
   
   # For Android device
   flutter run -d <device_id>
   
   # List available devices
   flutter devices
   ```

## 📋 Project Structure

```
events_app/
├── lib/
│   ├── main.dart                 # App entry point with Firebase initialization
│   ├── screens/
│   │   ├── splash_screen.dart    # Animated splash screen
│   │   ├── login_screen.dart     # User authentication
│   │   ├── register_screen.dart  # User registration
│   │   ├── events_screen.dart    # Event categories grid
│   │   ├── wedding_details_screen.dart  # Wedding catering details
│   │   └── wedding_catering_screen.dart # Wedding catering options
│   └── widgets/
│       └── EvenCard.dart         # Reusable event card widget
├── assets/
│   └── images/                   # Event images and icons
├── android/                      # Android-specific configurations
└── web/                         # Web-specific configurations
```

## 🎯 How to Run

### Web Development
```bash
flutter run -d chrome
```
- Opens in Chrome browser
- Hot reload enabled for development
- Firebase warnings are normal and handled gracefully

### Android Testing
```bash
# Connect your Android device with USB debugging enabled
flutter run

# Or specify device ID
flutter run -d <your_device_id>
```

### Build for Production
```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release
```

## 📸 How to Capture Responsive Screenshots in Android Studio

### Method 1: Using Android Studio Device Manager

1. **Open Android Studio**
   - Go to `Tools` → `Device Manager`

2. **Create Virtual Devices**
   - Click `Create Device`
   - Select different device profiles:
     - **Phone**: Pixel 7 (6.3" - 1080x2400)
     - **Tablet**: Pixel Tablet (10.95" - 2560x1600)
     - **Small Phone**: Pixel 4a (5.81" - 1080x2340)

3. **Launch Emulators**
   - Start each virtual device
   - Run your Flutter app: `flutter run`
   - Choose the emulator when prompted

4. **Capture Screenshots**
   - Click the **camera icon** in the emulator controls (right side panel)
   - Or use `Ctrl + S` keyboard shortcut
   - Screenshots save to: `~/Pictures/Screenshots/`

### Method 2: Using Flutter Tools

```bash
# Take screenshot programmatically
flutter screenshot --device-id=<device_id>

# List connected devices
flutter devices
```

### Method 3: Device-specific Screenshots

1. **Run on multiple devices simultaneously**
   ```bash
   # Terminal 1
   flutter run -d emulator-5554  # Pixel 7
   
   # Terminal 2  
   flutter run -d emulator-5556  # Pixel Tablet
   ```

2. **Capture using ADB**
   ```bash
   adb -s emulator-5554 exec-out screencap -p > pixel7_screenshot.png
   adb -s emulator-5556 exec-out screencap -p > tablet_screenshot.png
   ```

### Method 4: Professional App Store Screenshots

1. **Use Device Frames**
   - Go to `Tools` → `Device Manager` → `Actions` → `Show on Disk`
   - Use online tools like [AppMockUp](https://app-mockup.com/) or [MockUPhone](https://mockuphone.com/)

2. **Responsive Testing Sizes**
   - **Phone Portrait**: 1080x2400 (Pixel 7)
   - **Phone Landscape**: 2400x1080
   - **Tablet Portrait**: 1600x2560 (Pixel Tablet)
   - **Tablet Landscape**: 2560x1600

## 🛠 Technical Stack

- **Framework**: Flutter 3.x
- **Language**: Dart
- **Backend**: Firebase (Auth, Firestore)
- **State Management**: StatefulWidget with setState
- **UI Components**: Material Design
- **Typography**: Google Fonts (Inter, Lexend)
- **Icons**: Material Icons + Custom SVG
- **Navigation**: Navigator 2.0

## 🎨 Design System

### Colors
```dart
Primary Purple: #6318AF
Accent Pink: #E70472
Background: #F5F6FB (Bright)
Text Primary: Colors.black.withOpacity(0.8)
Text Secondary: #60666B
Card Background: Colors.white
```

### Typography
```dart
Headings: Lexend (Bold, 18-24px)
Body Text: Inter (Regular, 14-16px)
Captions: Lexend (Regular, 11-13px)
```

## 📱 App Flow

1. **Splash Screen** → Animated logo with gradients
2. **Login/Register** → Firebase authentication
3. **Events Screen** → Grid of event categories
4. **Wedding Details** → Service type selection with segmented pills
5. **Category Tabs** → Responsive filtering (ALL, Breakfast, Lunch & Dinner, Snacks)
6. **Shopping Cart** → View selected platters

## 🐛 Known Issues & Solutions

### Firebase Build Errors
- **Issue**: `Plugin with id 'com.google.gms.google-services' not found`
- **Solution**: ✅ Fixed in project-level `build.gradle` with proper plugin configuration

### Web Compatibility
- **Issue**: Firebase initialization warnings on Chrome
- **Solution**: ✅ Graceful fallback handling implemented

### Navigation Issues
- **Issue**: Deleted screen imports causing compilation errors
- **Solution**: ✅ Updated imports to use `WeddingDetailsScreen`

## 🏆 Key Achievements

✅ **100% Figma Design Accuracy** - Pixel-perfect implementation  
✅ **Responsive Design** - Works on phones, tablets, and web  
✅ **Modern UI/UX** - Smooth animations and professional design  
✅ **Firebase Integration** - Authentication and data storage  
✅ **Cross-platform** - Android, iOS, and Web support  
✅ **Performance Optimized** - Fast loading and smooth interactions  

## 📞 Support

For any issues or questions:
- Create an issue in this repository
- Check Flutter documentation: [flutter.dev](https://flutter.dev)
- Firebase setup guide: [firebase.google.com](https://firebase.google.com)

## 📄 License

This project is created for educational and portfolio purposes. All design assets are based on provided Figma designs.

---

**Made with ❤️ using Flutter** | **Responsive Design** | **Modern UI/UX**
