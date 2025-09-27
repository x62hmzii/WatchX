# WatchX - Flutter E-Commerce App

<p align="center">
  <img width="240" height="540" alt="Shop" src="https://github.com/user-attachments/assets/f0fd7d40-9aa5-4275-8384-14ed4086894c" />
  &nbsp;&nbsp;
  <img width="240" height="540" alt="Login" src="https://github.com/user-attachments/assets/bbf7cfee-9702-4856-91a8-81f4a4fff128" />
  &nbsp;&nbsp;
  <img width="240" height="540" alt="drawer" src="https://github.com/user-attachments/assets/6ff29a79-99dc-4460-92f9-8ffb645577d7" />
</p>

<p align="center">
  <img width="240" height="540" alt="cart" src="https://github.com/user-attachments/assets/21207881-a2dc-469f-a6c5-eaa995b6d09c" />
  &nbsp;&nbsp;
</p>  

## Project Purpose

This project demonstrates how to build a production-level e-commerce app using Flutter.
The main goal was to:

* Practice MVVM architecture in Flutter
* Use state management effectively with Provider
* Separate business logic from UI for clean and scalable code
* Build a functional, resume-ready project

## ✨ Features

* Product catalog with multiple watch listings
* Add to cart with quantity management
* Shopping cart with dynamic updates
* Responsive layout for different screen sizes
* Clean navigation structure with multiple screens

## 🏗️ Architecture & State Management

* **Pattern:** MVVM (Model View ViewModel)
* **State Management:** Provider
* **Business Logic:** Separated from UI, kept inside ViewModels
* **Reactive Updates:** Used ChangeNotifier and Consumer for efficient UI rebuilds

**Folder Structure:**

```
lib/
├── models/          # Data Models (Watch, CartItem)
├── viewmodels/      # Business Logic and State (Providers)
├── views/           # UI Screens
├── widgets/         # Reusable Widgets
└── assets/          # Images and resources
```

##  Technical Implementation

* **State:** Implemented with Provider and ChangeNotifier
* **Navigation:** Multi-screen app with named routes
* **Widgets:** Custom, reusable widget design
* **Responsive:** Optimized layout for different device sizes

##  Future Enhancements

* User authentication and profiles
* Payment integration
* Wishlist and favorites
* Product reviews
* API integration with backend

## 👨‍💻 Developer

Muhammad Hamza Salman
Flutter Developer

---

This project is built with Flutter to highlight clean architecture and practical state management.
