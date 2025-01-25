

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

# Overview 
To get started, create an account [here](https://music.ai/dash/) to obtain your API key. After obtaining the key, you can use it by passing it into the `Moises` constructor within your client. The example below demonstrates how to fetch the `MoisesApplicationModel`.

```dart
Future<void> getApplication() async {
  try {
    // Create a new Moises client with your API key
    final Moises moises = Moises('Your API key');

    // Fetch the application data
    final MoisesApplicationModel value = await moises.application.get();

    return value;
  } on MoisesException catch (error) {
    print('Error: $error');
  }
}
```
You can find additional examples [here](https://github.com/whosramoss/moises/blob/main/example/main.dart). To run them, execute `dart run example/main.dart` for more demonstration code.

# Working with JSON Serializers

This client utilizes JSON serialization through the [json_serializable](https://pub.dev/packages/json_serializable) package. To continuously rebuild the serializers in the background when files are updated, run the following command:

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```
# Full API Documentation
For complete API documentation, refer to the official guide [here](https://music.ai/docs/getting-started/introduction/).

# Contributing

If you want to contribute to `moises`, please make sure to review the [contribution guidelines](https://github.com/whosramoss/moises/blob/master/CONTRIBUTING.md). This project makes use of [GitHub issues](https://github.com/whosramoss/moises/issues) for
tracking requests and bugs.
