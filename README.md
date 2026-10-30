# CloudX Singular ad-revenue connector Swift package

This repository distributes the Singular ad-revenue connector for the CloudX iOS SDK.

## Requirements

- iOS 15 or later (Singular SDK's Swift package requires it)
- Xcode 16 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-connector-singular.git
```

Select an exact package version from the compatibility table. Add the
`CloudXSingularConnector` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the CloudX registration code.

| Package version | CloudX ad-revenue connector | Singular SDK |
| --- | --- | --- |
| `12060000.0.0` | `12.6.0.0` | `12.6.0` or later |

The package installs CloudX Core and Singular SDK `12.6.0` or later. Initialize Singular SDK as its own documentation describes. Import `CloudXCore` in the application. The ad-revenue connector registers when the application loads.

## Versioning

CloudX ad-revenue connector versions have four components. Swift package versions use three. The package tag joins the ad-revenue connector components into the major number. For example, ad-revenue connector `12.6.0.0` uses package version `12060000.0.0`.

## License

The CloudX ad-revenue connector uses the Business Source License 1.1. See [LICENSE](LICENSE).
