//
//  SearchCityPresenter.swift
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

protocol SearchCityPresentationLogic
{
  func presentSomething(response: SearchCity.Something.Response)
}

class SearchCityPresenter: SearchCityPresentationLogic
{
  weak var viewController: SearchCityDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: SearchCity.Something.Response)
  {
    let viewModel = SearchCity.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
