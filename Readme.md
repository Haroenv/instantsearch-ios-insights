[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)
[![CocoaPods](https://img.shields.io/cocoapods/v/AlgoliaSearch-Client-Swift.svg)]()
[![CocoaPods](https://img.shields.io/cocoapods/l/AlgoliaSearch-Client-Swift.svg)]()
[![](https://img.shields.io/badge/OS%20X-10.9%2B-lightgrey.svg)]()
[![](https://img.shields.io/badge/iOS-7.0%2B-lightgrey.svg)]()
[![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg)]()
<a href="https://developer.apple.com/documentation/objectivec"><img src="https://img.shields.io/badge/Objective--C-compatible-blue.svg" alt="Objective-C compatible" /></a>

By [Algolia](http://algolia.com).

# Algolia InstantSearch Insights for Swift and Objective-C

**InstantSearch Insights iOS** library allows developers to report click and conversion metrics related to search queries. It does so by correlating events with queryIDs generated by the search API when a query parameter clickAnalytics=true is set.

Once a search has been initialized and the queryID received, the library currently supports two types of events - click and conversion.

# Getting started

## Supported platforms

**InstantSearch Insights iOS** is supported on **iOS**, **macOS**, **tvOS** and **watchOS**,
and is usable from both **Swift** and **Objective-C**.

## Install

1. Add a dependency on InstantSearchInsights:
   - CocoaPods: add `pod 'InstantSearchInsights', '~> 1.0'` to your `Podfile`.
   - Carthage: add `github "algolia/instantsearch-ios-insights"` to your `Cartfile`.

2. Add `import InstantSearchInsights` to your source files.

## Quick Start

### Initialize the Insights client

You first need to initialize the Insights client. For that you need your **Application ID**, **API Key** and the **index name**.
You can find them on [your Algolia account](https://www.algolia.com/api-keys).

```swift
	// Swift
	Insights.register(appId: "testApp", apiKey: "testKey", indexName: "indexName")
```

```objc
	// ObjC
	[Insights registerWithAppId:@"testApp"
						 apiKey:@"testKey"
					  indexName:@"indexName"];
```

### Sending metrics

Once that you registered your **index** with the **Application ID** and the **API Key** you can easily start sending metrics

```swift
	// Swift
	Insights.shared(index: "indexName")?.click(params: [
		"queryID": "74e382ecaf889f9f2a3df0d4a9742dfb",
		"objectID": "85725102",
		"position": 2
	])

	Insights.shared(index: "indexName")?.conversion(params: [
		"queryID": "74e382ecaf889f9f2a3df0d4a9742dfb",
		"objectID": "85725102"
	])
```

```objc
	// ObjC
	[[Insights sharedWithIndex:@"indexName"] clickWithParams:
		@{
			@"queryID": @"74e382ecaf889f9f2a3df0d4a9742dfb",
			@"objectID": @"85725102",
			@"position": @2
		}];

	[[Insights sharedWithIndex:@"indexName"] conversionkWithParams:
		@{
			@"queryID": @"74e382ecaf889f9f2a3df0d4a9742dfb",
			@"objectID": @"85725102"
		}
	];
```
### Logging and debuging

In case you want to check if the metric was sent correctly, you need to enable the logging first

```swift
	// Swift
	Insights.shared(index: "indexName")?.loggingEnabled = true
```

After you enabled it, you can check the output for success messages or errors

```
// Success
[Algolia Insights - indexName] Sync succeded for Event(event: Insights.API.Event.click, params: ["position": 2, "queryID": 74e382ecaf889f9f2a3df0d4a9742dfb, "eventType": "Click", "objectID": 85725102])

//Error
[Algolia Insights - indexName] The objectID field is missing (Code: 422)
```

To get a more meaningful search experience, please follow our [Getting Started Guide](https://community.algolia.com/instantsearch-ios/getting-started.html).

## Getting Help

- **Need help**? Ask a question to the [Algolia Community](https://discourse.algolia.com/) or on [Stack Overflow](http://stackoverflow.com/questions/tagged/algolia).
- **Found a bug?** You can open a [GitHub issue](https://github.com/algolia/instantsearch-ios-insights).
- **Questions about Algolia?** You can search our [FAQ in our website](https://www.algolia.com/doc/faq/).


## Getting involved

* If you **want to contribute** please feel free to **submit pull requests**.
* If you **have a feature request** please **open an issue**.
* If you use **InstantSearch** in your app, we would love to hear about it! Drop us a line on [discourse](https://discourse.algolia.com/) or [twitter](https://twitter.com/algolia).

# License

InstantSearch iOS Insights is [MIT licensed](LICENSE.md).

[react-instantsearch-github]: https://github.com/algolia/react-instantsearch/
[instantsearch-android-github]: https://github.com/algolia/instantsearch-android
[instantsearch-js-github]: https://github.com/algolia/instantsearch.js
