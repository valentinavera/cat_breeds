# CatBreeds App

CatBreeds is a simple Flutter application that displays a list of cat breeds. The app fetches data from a remote API and allows users to search for cat breeds by name. The list is paginated, and more breeds are loaded as the user scrolls down.

## Features

- **Search:** Filter cat breeds by typing in the search bar.
- **Pagination:** Automatically loads more cat breeds as you scroll to the bottom of the list.
- **Asynchronous Data Fetching:** Uses a cubit to manage state and perform asynchronous requests to fetch data.

## Getting Started

### Prerequisites

- Flutter SDK: Ensure you have Flutter installed. You can download it from [flutter.dev](https://flutter.dev).
- API Key: This app requires an API key to access the cat breeds data. Add your API key and API host to the `.env` file.

### Running the App

1. **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/catbreeds.git
    cd catbreeds
    ```

2. **Install dependencies:**

    ```bash
    flutter pub get
    ```

3. **Run the app:**

    ```bash
    flutter run
    ```

    This command will build and launch the app on your connected device or emulator.

### Building the APK

To generate an APK for Android, use the following command:

```bash
flutter build apk
```

The APK file will be generated in the build/app/outputs/flutter-apk/ directory.

## Project Structure
- lib/: Contains the main codebase for the Flutter app.
- models/: Defines the data models such as Cat, Breeds, and Weight.
- repositories/: Contains the QueryRepository class responsible for making API requests.
- cubits/: Handles the state management logic using QueryCubit.

## Dependencies
- flutter_bloc: Used for state management.
- http: Used to make HTTP requests to the API.
- flutter_dotenv: Loads environment variables from a `.env` file.

## Enviroment variables

To configure the API key and host, create a `.env` file in the root of the project:

APIHOST=your_api_host_here
APIKEY=your_api_key_here

## Acknowledgments

- [TheCatAPI](https://thecatapi.com/) for providing the data used in this app.
- Flutter and Dart teams for creating such a powerful development framework.