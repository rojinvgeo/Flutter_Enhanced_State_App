# Enhanced State App

A Flutter project demonstrating **different state management techniques** in a single app.  
This project is designed to help beginners understand **setState**, **Lifting State Up**, and **InheritedWidget** through practical examples.

---

## Project Overview
In this project, I built an app with **three different screens**, each showcasing a unique approach to state management:

1. **Local Counter using `setState()`**  
   - Updates a counter locally in a single widget.  
2. **Toggle Light using Lifting State Up**  
   - Shares state between two widgets: a Switch and a Light Bulb icon.  
3. **Shared Counter using InheritedWidget**  
   - Demonstrates global state management across multiple widgets/screens without passing props manually.

The app also includes a **Home Menu** for easy navigation between examples.

---

## Features
- **Local Counter**: Increment and reset a counter using `setState()`.
- **Toggle Light**: Switch a light bulb on/off using Lifting State Up.
- **Shared Counter**: Increment a global counter using InheritedWidget.
- Simple and clean UI for learning Flutter state management.
- Navigation between multiple screens.

---


## How to Run

1. **Clone the repository:**

```bash
git clone https://github.com/yourusername/enhance_state_app.git
cd enhance_state_app

2. Get dependencies:
flutter pub get

3. Run the app:
flutter run

