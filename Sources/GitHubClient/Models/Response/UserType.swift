//
//  UserType.swift
//  GithubClient
//
//  Created by Eduardo Arenas on 7/19/17.
//  Copyright © 2017 GameChanger. All rights reserved.
//

public enum UserType: String, Decodable {
  case user = "User"
  case organization = "Organization"
  case bot = "Bot"
}
