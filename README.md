# Clima - Weather App

Clima is a simple and elegant weather application built with Flutter. It uses the OpenWeatherMap API to fetch current weather data based on the user's location or a city name provided by the user.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [API Key](#api-key)


## Features

- Fetches current weather data based on the user's GPS location.
- Allows users to search for weather data by city name.
- Displays weather conditions with icons and text messages.
- Elegant UI with a loading spinner while fetching data.

## Installation

1. **Clone the repository using Android Studio:**
   - Open Android Studio.
   - Go to **File > New > Project from Version Control**.
   - In the URL field, enter the repository URL: `https://github.com/OswaldSena/Flutter_Clima_Weather_App.git`.
   - Click **Clone**.

2. **Install Flutter dependencies:**
   - Open the terminal in Android Studio.
   - Run the command:
     ```sh
     flutter pub get
     ```

3. **Run the app:**
   - Ensure an emulator or a physical device is connected.
   - Click on the **Run** button in Android Studio or use the command:
     ```sh
     flutter run
     ```

## Usage

1. On launching the app, it will request permission to access your location.
2. After granting permission, the app will display the current weather based on your location.
3. You can tap the location icon to refresh the weather data based on your current location.
4. You can tap the city icon to search for weather data by entering a city name.

## Project Structure

```plaintext
lib/
├── main.dart                     # Entry point of the application
├── screens/
│   ├── loading_screen.dart       # Screen showing loading spinner
│   ├── location_screen.dart      # Screen displaying weather information
│   └── city_screen.dart          # Screen to input city name
├── services/
│   ├── location.dart             # Handles fetching GPS location
│   ├── networking.dart           # Handles API requests
│   └── weather.dart              # Handles weather data processing
└── utilities/
    └── constants.dart            # Contains constant values and styles
```

## Dependencies

- **flutter_spinkit:** A collection of loading indicators.
- **geolocator:** A Flutter plugin for getting location updates.
- **http:** A package for making HTTP requests.

To add these dependencies, ensure they are listed in the `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_spinkit: ^5.1.0
  geolocator: ^9.0.0
  http: ^0.13.3
```

## API Key

This project uses the OpenWeatherMap API to fetch weather data. You need to obtain an API key from [OpenWeatherMap](https://home.openweathermap.org/users/sign_up).

1. Sign up and get your API key.
2. Replace the `apiKey` constant in `weather.dart` with your API key:
   ```dart
   const apiKey = 'YOUR_API_KEY';
   ```


---

Feel free to contribute to this project by submitting issues or pull requests. Happy coding!
