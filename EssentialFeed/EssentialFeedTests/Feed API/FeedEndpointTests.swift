//
//  FeedEndpointTests.swift
//  EssentialFeedTests
//
//  Created by Andrei Ostafciuc on 25/11/2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import XCTest
import EssentialFeed

class FeedEndpointTests: XCTestCase {

  func test_feed_endpointURL() {
    let baseURL = URL(string: "http://base-url.com")!

    let received = FeedEndpoint.get.url(baseURL: baseURL)

    XCTAssertEqual(received.scheme, "http", "scheme")
    XCTAssertEqual(received.host, "base-url.com", "host")
    XCTAssertEqual(received.path, "/v1/feed", "path")
    XCTAssertEqual(received.query, "limit=10", "query")
  }
}
