//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Andrei Ostafciuc on 23/11/2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import Foundation

public enum FeedEndpoint {
  case get

  public func url(baseURL: URL) -> URL {
    switch self {
    case .get:
      return baseURL.appendingPathComponent("/v1/feed")
    }
  }
}
