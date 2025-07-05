# Events App - CraftMyPlate

A comprehensive Flutter application for event planning and catering services, built with Firebase authentication and beautiful UI following Figma designs.

## Features

### 🔐 Authentication
- **Email/Password Login & Registration** with Firebase Auth
- **User Data Storage** in Cloud Firestore
- **Automatic Login State Management**
- **Responsive Authentication UI** for all screen sizes

### 🎉 Event Management
- **Event Categories Grid** with 14+ event types:
  - House Party, Birthday, Wedding, Engagement
  - Office Party, Farmhouse Party, Kitty Party
  - Pooja, Haldi, Reception, Get Together
  - House Warming, Cocktail Party, Workshop
- **Beautiful Event Cards** with custom images
- **Responsive Grid Layout** adapting to different screen sizes

### 🍽️ Catering Services
- **Dual Service Modes**:
  - Bulk Food Delivery
  - Catering Service
- **Category-Based Menu Browsing**:
  - ALL, Breakfast, Lunch & Dinner, Snacks
- **Food Item Cards** with:
  - High-quality food images
  - Pricing information (starts at ₹299)
  - Min/Max capacity (10-120 people)
  - Category details (12 Categories & 40 Items)
  - Popular badges and live counters
- **Empty States** with custom SVG icons for unavailable items
- **Shopping Cart Integration** with item preview

### 🎨 UI/UX Features
- **Figma-Perfect Design Implementation**
- **Custom Color Palette**: 
  - Primary Purple: `#6318AF`
  - Accent Pink: `#E70472`
  - Background: `#F5F6FB`
- **Google Fonts Integration**: Inter & Lexend fonts
- **SVG Icon Support** with flutter_svg
- **Responsive Design** for all mobile screen sizes
- **Smooth Animations & Transitions**
- **Custom Status Bar** styling

## Tech Stack

- **Framework**: Flutter 3.x
- **Authentication**: Firebase Auth 5.6.2
- **Database**: Cloud Firestore 5.6.11
- **UI**: Custom widgets with Google Fonts
- **Icons**: SVG support with flutter_svg
- **State Management**: StatefulWidgets
- **Navigation**: Navigator 2.0

## App Architecture

```
lib/
├── main.dart                    # App entry point & auth flow
├── screens/
│   ├── events_screen.dart       # Main events grid screen
│   ├── house_party_details_screen.dart  # House party details
│   ├── wedding_catering_screen.dart     # Wedding catering with tabs
│   ├── login_screen.dart        # User login
│   └── register_screen.dart     # User registration
└── widgets/
    └── EventCard.dart          # Reusable event card component

assets/images/
├── Event Images (PNG):
│   ├── house_party.png, birthday.png, wedding.png
│   ├── engagement.png, office_party.png, etc.
├── Food Images (PNG):
│   ├── south_breakfast.png
│   └── samosa_plate.png
└── Icons (SVG):
    ├── healthicons_no-outline.svg  # No items available icon
    └── black_arrow.svg             # Navigation icons
```

## Screens Implemented

### 1. **Authentication Screens**
- Login with email/password
- Registration with Firestore user creation
- Auto-redirect based on auth state

### 2. **Events Grid Screen**
- 14 event categories in responsive grid
- Custom event images for each category
- Navigation to specific event details

### 3. **House Party Details Screen**
- Event-specific layout with banner image
- Menu categories and food items
- Shopping cart functionality

### 4. **Wedding Catering Screen**
- **Bulk Food Delivery** vs **Catering Service** tabs
- **Category Navigation**: ALL, Breakfast, Lunch & Dinner, Snacks
- **Food Item Cards** with detailed information
- **Empty State** for Snacks category with SVG icon
- **Persistent Shopping Cart** at bottom

## Setup Instructions

### Prerequisites
- Flutter SDK 3.x or higher
- Firebase project setup
- Android Studio / VS Code
- Firebase CLI (optional)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd events_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Firebase Configuration**
   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Add Android/iOS app with package name: `com.example.craftmyplate`
   - Download `google-services.json` and place in `android/app/`
   - Download `GoogleService-Info.plist` for iOS (if needed)
   - Enable Email/Password authentication in Firebase Console
   - Create Firestore database

4. **Add Image Assets**
   - Place event images in `assets/images/` directory
   - Update `pubspec.yaml` if adding new images
   - Recommended naming: `event_name.png` (e.g., `house_party.png`)

5. **Run the application**
   ```bash
   flutter run
   ```

## Firebase Configuration

### Web Setup (for testing)
Update `web/index.html` with your Firebase config:
```javascript
const firebaseConfig = {
  apiKey: "your-api-key",
  authDomain: "your-project.firebaseapp.com",
  projectId: "your-project-id",
  storageBucket: "your-project.appspot.com",
  messagingSenderId: "your-sender-id",
  appId: "your-app-id"
};
```

### Firestore Rules
```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{userId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
  }
}
```

## Design System

### Colors
- **Primary Purple**: `Color(0xFF6318AF)`
- **Accent Pink**: `Color(0xFFE70472)`
- **Background**: `Color(0xFFF5F6FB)`
- **Text Gray**: `Color(0xFF60666B)`
- **Border Gray**: `Color(0xFFE4E5E6)`

### Typography
- **Headings**: Lexend font family
- **Body**: Lexend font family  
- **Status Bar**: Inter font family
- **Size Range**: 12px - 18px

### Components
- **Rounded Corners**: 8px, 12px, 20px
- **Shadows**: Subtle elevation with `0x19000000` opacity
- **Gradients**: Purple gradient for Popular badges
- **Icons**: 16px - 70px SVG icons

## Features in Development

### Planned Features
- [ ] User Profile Management
- [ ] Order History & Tracking
- [ ] Payment Integration
- [ ] Event Calendar
- [ ] Push Notifications
- [ ] Social Sharing
- [ ] Reviews & Ratings
- [ ] Multi-language Support

### Known Issues
- [ ] Loading states could be improved
- [ ] Web Firebase compatibility needs optimization
- [ ] Image loading performance optimization needed

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Design inspiration from Figma community
- Firebase for backend services
- Flutter team for the amazing framework
- Google Fonts for typography
