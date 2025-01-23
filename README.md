

<h1 align="center">
  <img src="https://raw.githubusercontent.com/whosramoss/moises/main/resources/images/banner.png"/>
  <br/><br/>
  Moises REST API client for Dart
  <div align="center">
    <a href="https://pub.dev/packages/moises">
      <img src="https://img.shields.io/pub/v/moises.svg" alt="pub">
    </a>
    <a href="https://github.com/whosramoss/moises/actions?query=workflow%3ABuild">
      <img src="https://github.com/whosramoss/moises/workflows/Build/badge.svg" alt="Build Status">
    </a>
    <a href="https://codecov.io/gh/whosramoss/moises" >
      <img src="https://codecov.io/gh/whosramoss/moises/branch/main/graph/badge.svg?token=CE8QMVF7XY"/>
    </a>
    <br>
  </div>
</h1>


To use the API, you need to have an API key. You can get one by [**creating an account**](https://music.ai/dash/), once you have it, you can use it in the client by passing the key itself in the `Moises` constructor.

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

The full API documentation is available in [**here**](https://music.ai/docs/getting-started/introduction/). 

# Contributing

If you want to contribute to `moises`, please make sure to review the [contribution guidelines](https://github.com/whosramoss/moises/blob/master/CONTRIBUTING.md). This project makes use of [GitHub issues](https://github.com/whosramoss/moises/issues) for
tracking requests and bugs.
