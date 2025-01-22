# Products View Task Documentation

## Overview

This task implements a **Products View** using **Flutter**. The task includes a list of products displayed in a grid format, with features like product information, reviews, and user interactions. It follows a clean architecture approach, leveraging **Cubit** for state management, **Repository** for data fetching, and a modular folder structure for scalability.

---

## Folder Structure

The folder structure is designed to organize the application into core functionalities, making it maintainable and easy to navigate.

```text
lib/
├── core/
│   ├── api/                        # API-related utilities
│   ├── di/                         # Dependency Injection setup
│   ├── failures/                   # Error handling utilities
│   ├── app_theme.dart              # Application theme configuration
│   ├── assets_manager.dart         # Asset paths management
│   ├── color_manager.dart          # Color palette management
│   ├── constant_double_values.dart # Constants for double values
│   ├── font_manager.dart           # Font style and size management
│   └── snackbar_utils.dart         # Snackbar utility functions
├── data/
│   ├── models/                     # Models for the application
│   └── repo/                       # Repository classes for data handling
├── presentation/
│   ├── cubit/                      # State management (Cubit and states)
│   ├── view/                       # UI components
│   └── widgets/                    # Reusable UI components
└── main.dart                       # Entry point of the application
```

## Screenshot

### Products View
<img src="https://github.com/user-attachments/assets/84ffc1e5-e1c2-4a27-8c49-9d89e645ce03" alt="Image" width="430" height="932" />



## Features

1. **Grid View**: Displays products in a responsive grid layout.
2. **State Management**: Ensures smooth data loading and updates with Cubit.
3. **Reusable Architecture**: Clean separation of concerns using Repository and Cubit.


