<img src="https://img.shields.io/pub/v/shared_preferences.svg" alt="pub package">
This package is to build gradiant and floating Navigation Bar with a few lines of code.

## Features

- easy to use
- gradiant icon easily
- some beautiful animation

## Getting started

<p>To use this package, add <code>sweet_nav_bar</code> as a <a href="https://flutter.dev/docs/development/platform-integration/platform-channels">dependency in your pubspec.yaml file</a>.</p>

<br>
<img src="https://previews.dropbox.com/p/thumb/ABn1130aXSi03Pyv57NeH6BU1fk0tWeo6kRYwiEKqmUqXlY-02vnnueX_NxOGgPtua2ZXz43PV-sx5a6Q2uSpUDbUMD4K8-Ez67ImzKp6Y4iWXlRt8nkSqb7T6fiZl3KnQFLsydqdaz3jDIbH0gTkgCNsECORCjFBBlrKUCYymT2xJtQrN14Xx_-1M7vTyAOA1G8Yx3kPtHhvDahVVZiVRZnZ6JlO4_Rwt1b8KSGhpBwsAY4Xyn_frarvJnWyABp6CwZy9FDu2J8znsCRQv_5FuhHjUxMEEp04OW7LnCtnQVOCwEEDN5f89xYqKyQ5F90y1dLbEROq4Fi7ar3cSqQFIQ6bS8E-B21bykrGxn6wg4Gcwr5bOHT3UG1wee3pZtHXw/p.gif" width = "300px">

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
