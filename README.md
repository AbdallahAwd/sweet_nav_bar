<img src="https://img.shields.io/pub/v/shared_preferences.svg" alt="pub package">
This package is to build gradiant and floating Navigation Bar with a few lines of code.

## Features

- easy to use
- gradiant icon easily
- some beautiful animation

## Getting started

<p>To use this package, add <code>sweet_nav_bar</code> as a <a href="https://flutter.dev/docs/development/platform-integration/platform-channels">dependency in your pubspec.yaml file</a>.</p>

<br>
<img src="https://lh5.googleusercontent.com/0GUNN2qVLqBxm7DrwhroJoXJ8zhzaW-5rFmZGNrhTpsgDLii3Hw8hbRCEOuurXvh6KDcOFcVHVq2jWTIyAkS=w1920-h1080-rw" width = "300px">

## Usage

Here is How to use it, You can find Package <a href = "https://github.com/AbdallahAwd/sweet_nav_bar">API</a>

```dart
SweetNavBar(
        currentIndex: cIndex,
        onTap: (index) {
          setState(() {
            cIndex = index;
          });
        },
        paddingGradientColor: iconLinearGradiant,
        paddingBackgroundColor: Colors.red,
        items: [
          SweetNavBarItem(
              sweetActive: const Icon(Icons.home),
              sweetIcon: const Icon(
                Icons.home_outlined,
              ),
              sweetLabel: 'Home'),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.business), sweetLabel: 'Business'),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.school), sweetLabel: 'School'),
        ],
      ),
```
