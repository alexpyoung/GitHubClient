//
//  Issue.swift
//  GithubClient
//
//  Created by Eduardo Arenas on 8/13/17.
//  Copyright © 2017 GameChanger. All rights reserved.
//

import Foundation

public struct Issue: Decodable {

  public let id: Int
  public let url: String
  public let htmlUrl: String?
  public let commentsUrl: String
  public let eventsUrl: String
  public let number: Int
  public let state: IssueState
  public let title: String
  public let body: String
  public let closedBy: User?
  public let user: User?
  public let labels: [IssueLabel]
  public let assignee: User?
  public let assignees:  [User]?
  //let milestone: Milestone?
  public let comments: Int
  // let pullRequest: PullRequest
  public let closedAt: Date?
  public let createdAt: Date?
  public let updatedAt: Date?
  public let locked: Bool
  public let repository: Repository?

}

extension Issue {
  enum CodingKeys: String, CodingKey {
    case id
    case url
    case htmlUrl = "html_url"
    case commentsUrl = "comments_url"
    case eventsUrl = "events_url"
    case number
    case state
    case title
    case body
    case closedBy = "closed_by"
    case user
    case labels
    case assignee
    case assignees
    case comments
    case closedAt = "closed_at"
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case locked
    case repository
  }
}
