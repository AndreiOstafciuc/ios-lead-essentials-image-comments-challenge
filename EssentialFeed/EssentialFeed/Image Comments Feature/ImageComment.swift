//
//  ImageComment.swift
//  EssentialFeed
//
//  Created by Andrei Ostafciuc on 06/11/2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import Foundation

public struct ImageComment: Equatable {
  public let id: UUID
  public let message: String
  public let createdAt: Date
  public let username: String

  public init(id: UUID, message: String, createdAt: Date, username: String) {
    self.id = id
    self.message = message
    self.createdAt = createdAt
    self.username = username
  }
}