//
//  HomeScreenViewModelTests.swift
//  JsonPlaceHolderApiTests
//
//  Created by Osman Murat Haslak on 6.02.2025.
//

import XCTest
@testable import JsonPlaceHolderApi

// MARK: - HomeScreenTests
class HomeScreenTests: XCTestCase {
    
    private var viewModel: HomeScreenViewModel!
    private var view: MockHomeScreenViewController!
    var homeScreen: HomeScreen!
    var navigationController: UINavigationController!

    override func setUp() {
        super.setUp()
        view = MockHomeScreenViewController()
        view = .init()
        viewModel = .init(view: view)
        view.viewModel = viewModel
    }
    
    override func tearDown() {
        viewModel = nil
        view = nil
        navigationController = nil
        super.tearDown()
    }
    
    func test_getUsers_Success() {
        let reloadExpectation = expectation(description: "reloadTableViewData called")

        viewModel.getUsers()
        
        view.reloadTableViewDataClosure = {
             reloadExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 10, handler: nil)
        
        XCTAssertGreaterThan(viewModel.userList.count, 0, "User list should not be empty")
        XCTAssertEqual(viewModel.userList[0].name, "Leanne Graham")
        XCTAssertEqual(viewModel.userList[1].name, "Ervin Howell")
    }
    
}
