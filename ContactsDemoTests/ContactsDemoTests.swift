//
//  ContactsDemoTests.swift
//  ContactsDemoTests
//
//  Created by Artem Goncharov on 29.03.2021.
//

import XCTest
@testable import ContactsDemo

class ContactsDemoTests: XCTestCase {

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
    
//    func testViewOpened() throws {
//        let presenter = ContactsPresenter.init(
//            contactsRepository: MockGetContactsRepository(),
//            callHistoryRepository: MockGetCallHistoryRepository())
//        let view:ContactsView!
//        view = MockView()
//        presenter.view = view
//
//
////        let presenterCrash = ContactsPresenter.init(
////            contactsRepository: MockGetContactsRepositoryWithCrashes(),
////            callHistoryRepository: MockGetCallHistoryRepositoryWithCrashes())
////        presenterCrash.view = view
//
//      //  XCTAssertNoThrow(presenterCrash.viewOpened())
//        XCTAssertNoThrow(presenter.viewOpened())
//    }
//
//
//
//    func testNewContactAdded() throws {
//        let presenter = ContactsPresenter.init(
//            contactsRepository: MockGetContactsRepository(),
//            callHistoryRepository: MockGetCallHistoryRepository())
//
//        let view:ContactsView!
//        view = MockView()
//        presenter.view = view
//        let contact = ContactsData.init(firstName: "Ilya", lastName: "Gushchin", phone: "920321")
//
//        let presenterCrash = ContactsPresenter.init(
//            contactsRepository: MockGetContactsRepositoryWithCrashes(),
//            callHistoryRepository: MockGetCallHistoryRepositoryWithCrashes())
//        presenterCrash.view = view
//
////        XCTAssertNoThrow(presenterCrash.newContactAdded(contact), "Assert no throw on add new contact method")
//        XCTAssertNoThrow(presenter.newContactAdded(contact), "Assert no throw on add new contact method")
//    }
//
//    func testMakeCall() throws {
//        let presenter = ContactsPresenter.init(
//            contactsRepository: MockGetContactsRepository(),
//            callHistoryRepository: MockGetCallHistoryRepository())
//        let contact = Contact.init(recordId: "id", firstName: "firstname", lastName: "lastName", phone: "89203321")
//        let view:ContactsView!
//        view = MockView()
//        presenter.view = view
//        XCTAssertNoThrow(presenter.makeCall(to: contact), "Assert no throw on make call")
//    }
//
//
//    func testContactPressed() throws {
//        let presenter = ContactsPresenter.init(
//            contactsRepository: MockGetContactsRepository(),
//            callHistoryRepository: MockGetCallHistoryRepository())
//        let contact = Contact.init(recordId: "id", firstName: "firstname", lastName: "lastName", phone: "89203321")
//        let view:ContactsView!
//        view = MockView()
//        presenter.view = view
//        XCTAssertNoThrow(presenter.contactPressed(contact), "Assert no throw on contact pressed")
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
//
//}
//enum TestError: Error {
//    case runtimeError(String)
//}
//
//
//class MockGetContactsRepositoryWithCrashes: ContactsRepository {
//    func getContacts() throws -> [Contact] {
//        throw TestError.runtimeError("failure on getting contacts")
//    }
//
//    func add(contact: ContactsData) throws {
//        throw TestError.runtimeError("failure on getting contacts")
//    }
//
//    func delete(contact: Contact) throws {
//        throw TestError.runtimeError("failure on getting contacts")
//    }
//
//    func update(contact: Contact) throws {
//        throw TestError.runtimeError("failure on getting contacts")
//    }
//}
//
//
//class MockGetContactsRepository: ContactsRepository {
//    func getContacts() throws -> [Contact] {
//        return []
//    }
//
//    func add(contact: ContactsData) throws {
//        print("add method")
//    }
//
//    func delete(contact: Contact) throws {
//        print("delete method")
//    }
//
//    func update(contact: Contact) throws {
//        print("update method")
//    }
//}
//
//class MockGetCallHistoryRepository: CallHistoryRepository{
//    func getHistory() throws -> [CallRecord] {
//        return []
//    }
//
//    func add(record: CallRecord) throws {
//        print("add method")
//    }
//}
//
//class MockGetCallHistoryRepositoryWithCrashes: CallHistoryRepository{
//    func getHistory() throws -> [CallRecord] {
//        throw TestError.runtimeError("failure on getting contacts")
//    }
//
//    func add(record: CallRecord) throws {
//        throw TestError.runtimeError("failure on getting contacts")
//    }
//}
//
//class MockView: ContactsView  {
//    func showContacts(_ contacts: [Contact]) {
//        print("show contacts")
//    }
//
//    func showError(_ error: Error) {
//        print("show error")
//    }
//
//    func showProgress() {
//        print("show progress")
//    }
//
//    func hideProgress() {
//        print("hide progress")
//    }
}

