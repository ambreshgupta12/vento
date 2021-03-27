# vento

A package for data and api handling in Flutter

## Create Repository class

Create a repo class and extends the BaseVentoRepo class

BaseVentoRepo
contains [getResult](https://github.com/ashishrawat2911/vento/blob/78ce80222136d33496ae70ae75f095784a54654e/lib/src/network_state/result/result.dart#L7)
which will take the future api response, and a function which return ResultError class

```dart
  Future<Result<T>> getResult<T>(Future<T> response, ResultErrorChanged errorProcess);
```

```dart
class ApiRepository extends BaseVentoRepo {

  Future<Result<String>> getApiData() {
    return getResult(Future<String>.value("Hello"), (value) {
      return ResultError(0, "This is a error");
    });
  }

}

```

```dart
class ApiBloc extends VentoBloc<String> {
  ApiRepository apiRepository = ApiRepository();

  getApi() {
    getApiData(apiRepository.getApiData());
  }
}
```