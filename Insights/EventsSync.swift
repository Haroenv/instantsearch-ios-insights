//
//  EventsSync.swift
//  Insights
//

//  Copyright © 2018 Algolia. All rights reserved.
//

import Foundation

extension WebService {
  public func sync(event: Syncable, completionHandler: @escaping (Error?) -> ()) {
    load(resource: event.sync(),
         completion: {[weak self] (res) in
          switch res {
          case .success(_):
            self?.logger.debug(message: "Sync succeded for \(event)")
            completionHandler(nil)
          case .fail(let err):
            self?.logger.debug(message: (err as? WebserviceError)?.localizedDescription ?? err.localizedDescription)
            completionHandler(err)
          }
    })
  }
}
