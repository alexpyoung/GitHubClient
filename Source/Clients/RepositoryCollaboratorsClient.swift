//
//  RepositoryCollaboratorsClient.swift
//  GithubClient
//
//  Created by Eduardo Arenas on 8/12/17.
//  Copyright © 2017 GameChanger. All rights reserved.
//

import Foundation
import RxSwift

public final class RepositoryCollaboratorsClient: ApiClient {

  public func listAll(owner: String, repo: String, affiliation: Affiliation? = nil) -> Observable<[User]> {
    return getObject(apiUrl: ApiUrl.repositoryCollaborators(owner: owner, repo: repo), parameters: [affiliation])
  }

  public func check(owner: String, repo: String, username: String) -> Observable<Bool> {
    return getBoolean(apiUrl: ApiUrl.repositoryCollaborator(owner: owner, repo: repo, username: username))
  }
}