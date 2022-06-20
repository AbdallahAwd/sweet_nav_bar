<img src="https://img.shields.io/pub/v/shared_preferences.svg" alt="pub package">
This package is to build gradiant and floating Navigation Bar with a few lines of code.

## Features

- easy to use
- gradiant icon easily
- some beautiful animation

## Getting started

<p>To use this package, add <code>sweet_nav_bar</code> as a <a href="https://flutter.dev/docs/development/platform-integration/platform-channels">dependency in your pubspec.yaml file</a>.</p>

<br>
<a href="https://lh3.googleusercontent.com/nVP3n5cIcP6Xqw3Ls2uuza0roYWF7Lsku-nehJsZ_LW8f1aCfIQdRkoiE7RbLgTlopX2dAOzkI3hDUYlPVXV=w1148-h902-rw"><img src="https://lh3.googleusercontent.com/nVP3n5cIcP6Xqw3Ls2uuza0roYWF7Lsku-nehJsZ_LW8f1aCfIQdRkoiE7RbLgTlopX2dAOzkI3hDUYlPVXV=w1148-h902-rw" alt="package photo" width = "300px">
</a>

## Usage

Here is How to use it, You can find Package <a href = "https://github.com/AbdallahAwd/sweet_nav_bar">API</a>

```dart
bottomNavigationBar: SweetNavBar(
        paddingGradientColor: iconLinearGradiant,
        currentIndex: cIndex,
        paddingBackgroundColor: Colors.red,
        items: [
          SweetNavBarItem(
              sweetActive: const Icon(Icons.home),
              sweetIcon: const Icon(
                Icons.home_outlined,
              ),
              sweetLabel: 'Home',
              iconColors: iconLinearGradiant,
              sweetBackground: Colors.red),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.business), sweetLabel: 'Business'),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.school), sweetLabel: 'School'),
        ],
        onTap: (index) {
          setState(() {
            cIndex = index;
          });
        },
      ),
```
