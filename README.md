# Isotope Auth

Authentication service base for Isotope apps.

## Installation

Add the following dependencies to your `pubspec.yaml`:

```dart
dependences:
  isotope_auth:
    git: git://github.com/isotopeltd/isotope_auth.git
```

## Implementation

In your project, import the package:

```dart
import 'package:isotope_auth/isotope_auth';
```

## Service Adapters

There are currently 18 planned service adapters (check box indicates readiness):

- [x] [Anonymous](https://github.com/isotopeltd/isotope_auth_anonymous)
- [ ] [Apple](https://github.com/isotopeltd/isotope_auth_apple)
- [ ] [Azure Active Directory](https://github.com/isotopeltd/isotope_auth_azure)
- [ ] [Device](https://github.com/isotopeltd/isotope_auth_device) local device fingerprint, face id, pattern or pin
- [ ] [Email](https://github.com/isotopeltd/isotope_auth_email) passwordless link sent via email
- [ ] [Facebook](https://github.com/isotopeltd/isotope_auth_facebook)
- [ ] [GitHub](https://github.com/isotopeltd/isotope_auth_github)
- [ ] [Google](https://github.com/isotopeltd/isotope_auth_google)
- [ ] [LinkedIn](https://github.com/isotopeltd/isotope_auth_linkedin)
- [ ] [Microsoft](https://github.com/isotopeltd/isotope_auth_microsoft)
- [ ] [Mock](https://github.com/isotopeltd/isotope_auth_mock) for localised testing
- [ ] [Multifactor](https://github.com/isotopeltd/isotope_auth_multifactor)
- [ ] [OAuth2](https://github.com/isotopeltd/isotope_auth_oauth2)
- [x] [Password](https://github.com/isotopeltd/isotope_auth_password) email password auth
- [ ] [Phone](https://github.com/isotopeltd/isotope_auth_phone)
- [ ] [Slack](https://github.com/isotopeltd/isotope_auth_slack)
- [ ] [Twitter](https://github.com/isotopeltd/isotope_auth_twitter)
- [ ] [Web](https://github.com/isotopeltd/isotope_auth_web)

## License

This library is available as open source under the terms of the MIT License.

## Copyright

Copyright © 2020 Jurgen Jocubeit
