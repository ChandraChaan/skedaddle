# Skedaddle

Flutter app for challenge events: browse upcoming events, pick a package, register, pay, and follow winners and connections. Built in 2021.

## Features

- Sign up, log in and password reset
- Event listing, event details and upcoming events
- Package selection, registration cart and payment confirmation
- Profile with challenges, stats, followers and following
- Winners and connections widgets on the home screen
- Admin page

## Architecture

Layered structure with GetX for state, routing and dependency injection, and Dio for networking:

```
lib/
  Application/     GetX bindings and controllers (login, sign-up, events, cart)
  Domain/          data classes
  Infrastructure/  request parameters
  Network/         Dio client, error handling, logging, URL config
  Provider/        repository and adapters
  Presantation/    screens and widgets
  Config/          routes and pages
```

## Run

```bash
flutter pub get
flutter run
```

The API base URL lives in `lib/Network/NetworkURLConfig.dart`; point it at your own backend.

## License

MIT
