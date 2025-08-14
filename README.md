# Nectar - Grocery Shopping App 🛒

A modern and intuitive grocery shopping app built with Flutter. Browse products, manage a cart and favourites, and sign in securely — all with a clean, polished UI.

## 📱 Screens & Descriptions

> Note: Splash screen is intentionally omitted.

| | | |
|---|---|---|
| <img src="screenshots/login.png" width="240" alt="Login"/> | <img src="screenshots/login_with_validator.png" width="240" alt="Login with validation"/> | <img src="screenshots/signup.png" width="240" alt="Sign up"/> |
| <sub>Login</sub><br/><sub>Simple, focused sign-in to get users in quickly.</sub> | <sub>Login (Validation)</sub><br/><sub>Field-level validation for clear, actionable errors.</sub> | <sub>Sign Up</sub><br/><sub>Streamlined account creation with minimal friction.</sub> |
| <img src="screenshots/shop.png" width="240" alt="Shop"/> | <img src="screenshots/explore.png" width="240" alt="Explore"/> | <img src="screenshots/cart.png" width="240" alt="Cart"/> |
| <sub>Shop</sub><br/><sub>Curated home with featured and best-sellers.</sub> | <sub>Explore</sub><br/><sub>Category-based discovery and search.</sub> | <sub>Cart</sub><br/><sub>Quantity controls, price summary, and checkout entry.</sub> |
| <img src="screenshots/favourite.png" width="240" alt="Favourites"/> | <img src="screenshots/location.png" width="240" alt="Location"/> | <img src="screenshots/profile.png" width="240" alt="Profile"/> |
| <sub>Favourites</sub><br/><sub>Save and revisit the items you love.</sub> | <sub>Location</sub><br/><sub>Address selection to personalize delivery.</sub> | <sub>Profile</sub><br/><sub>Account details and app settings.</sub> |

## ✨ Highlights

- Smooth bottom navigation with clear state persistence
- Input validation with friendly, inline messages
- Reusable UI components for consistent design
- Feature-first architecture for scalable code

## 🛠️ Tech Stack

- Flutter (Dart)
- flutter_svg for vector icons

## 🚀 Getting Started

1. Install Flutter and set up your device/emulator
2. Fetch dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## 📂 Structure (brief)

```
lib/
├─ components/      # Reusable widgets
├─ core/            # Constants, utils, extensions
├─ features/        # auth, cart, explore, favs, home, location, nav_bar, profile, splash
└─ main.dart        # App entry
