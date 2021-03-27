# vento

A package for data and api handling in Flutter

```dart
class ApiRepository extends BaseVentoRepo {

  Future<Result<String>> getApiData() {

    return getResult(Future<String>.value("Hello"), (value) {
      return ResultError(0, "This is a error");
    });

  }

}

```
