

<h1 align="center">
  <img src="https://raw.githubusercontent.com/whosramoss/moises/main/resources/images/banner.png"/><br/><br/>
  Moises REST API client for Dart
</h1>

# Getting Started

In order to use the API, you need to have an API key. You can get one [**here**](https://developer.moises.ai/) and once you have it, you can use it in the client passing the key itself in the `Moises` constructor.

```dart
// Create a new client
final Moises moises = Moises('Your API key');
```
# Examples
The example below is for fetching the `MoisesApplicationModel`. You can find other examples inside the `example/main.dart` file.

```dart
// Get Application Result
Future<void> getApplication() async {
  try {
    final Moises moises = Moises('Your API key');
    final MoisesApplicationModel value = await moises.application.get();
    print('Application : $value');
  } on MoisesException catch (error) {
    print('Error : $error');
  }
}
```

This client uses JSON serializers by [json_serializable](https://pub.dev/packages/json_serializable). Run `pub run build_runner watch` to continuously rebuild serializers in the background when files are updated.

The full API documentation is available in [**here**](https://developer.moises.ai/docs). 

# Contributing

If you want to contribute to `moises`, please make sure to review the [contribution guidelines](https://github.com/whosramoss/moises/blob/master/CONTRIBUTING.md). This project makes use of [GitHub issues](https://github.com/whosramoss/moises/issues) for
tracking requests and bugs.
