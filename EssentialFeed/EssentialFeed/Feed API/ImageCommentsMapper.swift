//
//  ImageCommentsMapper.swift
//  EssentialFeed
//
//  Created by Andrei Ostafciuc on 06/11/2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import Foundation

final class ImageCommentsMapper {
  private struct Root: Decodable {
    let items: [RemoteFeedItem]
  }

  static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
    guard response.isOK, let root = try? JSONDecoder().decode(Root.self, from: data) else {
      throw RemoteImageCommentsLoader.Error.invalidData
    }

    return root.items
  }
}
