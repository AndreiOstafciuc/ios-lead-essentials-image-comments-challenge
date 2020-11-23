//
//  ImageCommentsEndpoint.swift
//  EssentialFeed
//
//  Created by Andrei Ostafciuc on 23/11/2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import Foundation

public enum ImageCommentsEndpoint {
  case get(UUID)
//  case post(imageId: UUID, comment: ImageComment)

  public func url(baseURL: URL) -> URL {
    switch self {
    case let .get(id):
      return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
    }
  }
}
