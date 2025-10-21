# Enhanced State App

A Flutter project demonstrating **different state management approaches** in a single app.  
This app helps you learn **setState**, **lifting state up**, and **InheritedWidget** in a practical way.

---

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Technologies](#technologies)
- [What I Learned](#what-i-learned)

---

## Overview
This project combines three common Flutter state management techniques:

1. **Local State (`setState`)** – updates UI for a single widget.
2. **Lifting State Up** – shares state between sibling widgets.
3. **InheritedWidget** – shares state across the widget tree and multiple screens.

The app has **three screens**, each demonstrating one technique, plus a **home menu** for navigation.

---

## Features
- **Local Counter** using `setState()`
- **Toggle Light** using **lifting state up** (Switch + LightBulb)
- **Shared Counter** using **InheritedWidget**  
- Clean navigation between examples

---


## Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/enhance_state_app.git
cd enhance_state_app

## Get dependencies:
flutter pub get

## Run the app:
flutter run
