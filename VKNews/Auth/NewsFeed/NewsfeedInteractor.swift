//
//  NewsfeedInteractor.swift
//  VKNews
//
//  Created by Dmitry Andreyanov on 10/28/19.
//  Copyright (c) 2019 Dmitrii Andreianov. All rights reserved.
//

import UIKit

protocol NewsfeedBusinessLogic {
    func makeRequest(request: Newsfeed.Model.Request.RequestType)
}

class NewsfeedInteractor: NewsfeedBusinessLogic {
    
    var presenter: NewsfeedPresentationLogic?
    var service: NewsfeedService?
    
    private var fetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())
    
    func makeRequest(request: Newsfeed.Model.Request.RequestType) {
        if service == nil {
            service = NewsfeedService()
        }
        
        switch request {
            
        case .getNewsfeed:
            fetcher.getFeed { [weak self] (feedResponse) in
                
                feedResponse?.profiles.map({ (profile) in
                    print ("\(profile) \n\n ")
                })
                
                guard let feedResponse = feedResponse else { return }
                self?.presenter?.presentData(response: Newsfeed.Model.Response.ResponseType.presentNewsfeed(feed: feedResponse))
            }
        }
    }
}
