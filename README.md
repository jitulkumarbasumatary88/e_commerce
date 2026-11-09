# 🛍️ Stylish - Flutter E-Commerce Application

A modern, production-grade e-commerce mobile application built with Flutter, Riverpod, Drift
(SQLite), Dio, and Firebase Authentication.

---

## ✨ Features

- **🔐 Firebase Authentication:** Email & password authentication with automatic session persistence,
  input validation, and spam-protected sign out.
- **🛒 Offline Cart (Drift SQLite):** Local reactive SQLite database using Drift with real-time
  reactive streams (`StreamNotifier`) for adding, updating quantities, and removing items.
- **🌐 Products Catalog & API (Dio):** Integration with DummyJSON API via Dio for product browsing,
  categories, pricing, and ratings.
- **🔍 Debounced Search:** Responsive real-time product search with a 500ms debounce timer to
  optimize network calls.
- **💳 Checkout & Payment Flow:** Delivery address details, billing summary, selectable mock payment
  methods, and order success dialog.
- **📱 Responsive UI & Design Tokens:** Centralized theme system (`AppColors`, `AppSpacing`,
  `AppTextStyles`) with clamped text scaling for all device screen sizes.
- **🧪 Automated Tests:** Unit tests for data model serialization and widget tests for reusable
  custom components.

---

## 🛠️ Tech Stack & Architecture

- **Framework:** Flutter (Material 3)
- **State Management:** Flutter Riverpod (`StreamNotifier`, `Provider`)
- **Local Database:** Drift (SQLite) with `drift_flutter`
- **Network Client:** Dio
- **Authentication:** Firebase Auth (`firebase_core`, `firebase_auth`)
- **Image Caching:** Cached Network Image
- **Icons:** Cupertino Icons & Font Awesome Flutter
- **Testing:** Automated Unit & Widget Tests (`flutter_test`)

---

## 🚀 Setup & Run Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/e_commerce.git
   cd e_commerce
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the application:
   ```bash
   flutter run
   ```

4. Run tests:
   ```bash
   flutter test
   ```
   