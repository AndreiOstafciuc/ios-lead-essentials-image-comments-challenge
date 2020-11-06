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
    guard isOK(response), let root = try? JSONDecoder().decode(Root.self, from: data) else {
      throw RemoteImageCommentsLoader.Error.invalidData
    }

    return root.items
  }

  private static func isOK(_ response: HTTPURLResponse) -> Bool {
    (200...299).contains(response.statusCode)
  }
}
