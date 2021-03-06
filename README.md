# GraphQL

The Swift implementation for GraphQL, a query language for APIs created by Facebook.

[![Swift][swift-badge]][swift-url] [![CI][ci-badge-url]][ci-url] [![License][mit-badge]][mit-url]

Looking for help? Find resources [from the community](http://graphql.org/community/).

## Installation

Add the package to Your SwiftPM package dependencies:

```swift
.package(
    url: "https://github.com/maximkrouk/GraphQL.git", 
    from: "1.0.0-beta.1.0"
)
```

then add `GraphQL` dependency to your target:

```swift
.product(name: "GraphQL", package: "GraphQL")
```

## Graphiti

This repo only contains the core GraphQL implementation. For a better experience when creating your types use [Graphiti](https://github.com/maximkrouk/Graphiti).

**Graphiti** is a Swift library for building GraphQL schemas/types fast, safely and easily.

## GraphQLKit

For a better experience when creating your types use [GraphQLKit](https://github.com/maximkrouk/GraphQLKit).

**GraphQLKit** is a convenient Vapor adapter for Graphiti.


## License

This project is released under the MIT license. See [LICENSE](LICENSE) for details.

[swift-badge]: https://img.shields.io/badge/Swift-5.2-orange.svg?style=flat
[swift-url]: https://swift.org
[mit-badge]: https://img.shields.io/badge/License-MIT-blue.svg?style=flat
[mit-url]: https://tldrlegal.com/license/mit-license
[ci-badge-url]: https://github.com/maximkrouk/GraphQL/workflows/Build/badge.svg
[ci-url]: https://github.com/maximkrouk/GraphQL/actions