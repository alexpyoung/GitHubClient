//
//  CommonParameters.swift
//  GithubClient
//
//  Created by Eduardo Arenas on 8/12/17.
//  Copyright © 2017 GameChanger. All rights reserved.
//

public enum Affiliation: String, ApiParameter {
  public var name: String { return "affiliation" }

  case collaborator
  case organizationMember = "organization_member"
  case owner
}

public enum Direction: String, ApiParameter {
  public var name: String { return "direction" }

  case ascending = "asc"
  case descending = "desc"
}

public enum Permission: String, ApiParameter, Encodable {
  public var name: String { return "permission" }

  case pull
  case push
  case admin
}
