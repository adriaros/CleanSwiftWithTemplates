//
//  ViewWeatherInteractor.swift
//  CleanSwiftTemplates
//
//  Created by Adria Ros Saez on 1/10/18.
//  Copyright (c) 2018 adriaros. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ViewWeatherBusinessLogic
{
  func doSomething(request: ViewWeather.Something.Request)
}

protocol ViewWeatherDataStore
{
  //var name: String { get set }
}

class ViewWeatherInteractor: ViewWeatherBusinessLogic, ViewWeatherDataStore
{
  var presenter: ViewWeatherPresentationLogic?
  var worker: ViewWeatherWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: ViewWeather.Something.Request)
  {
    worker = ViewWeatherWorker()
    worker?.doSomeWork()
    
    let response = ViewWeather.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
