## meruinnovatorsapp
- This app is built by meru innovators club members and is under development. Their will be more changes on the app

## Setting up the application

1. Clone the application:
    ```bash
    git clone https://github.com/Piexie3/meruinnovators.git
    ```
2. Ensure you have the latest version of Flutter installed:
    ```bash
    flutter upgrade
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run code generation:
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```
5. Build the application:
    ```bash
    flutter build apk
    ```
6. Run the application:
    - For development:
    ```bash
    flutter run  --flavor development --target lib/main_dev.dart
    ```