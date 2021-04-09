//
//  ContactsPresenterTests.swift
//  ContactsDemoTests
//
//  Created by Artem Goncharov on 07.04.2021.
//

import XCTest
@testable import ContactsDemo

class ContactsPresenterTests: XCTestCase {
    
    var presenter: ContactsPresenter!
    var presenterCrash: ContactsPresenter!
    var view: ContactsView!
   

    override func setUpWithError() throws {
        presenter = ContactsPresenter.init(
            contactsRepository: MockGetContactsRepository(),
            callHistoryRepository: MockGetCallHistoryRepository())
        view = MockView()
        presenter.view = view
        
        presenterCrash = ContactsPresenter.init(
            contactsRepository: MockGetContactsRepositoryWithCrashes(),
            callHistoryRepository: MockGetCallHistoryRepositoryWithCrashes())
        presenterCrash.view = view
        
    }

 
    func testViewOpened() throws {
        XCTAssertNoThrow(presenter.viewOpened())
    }
    
    func testViewOpenedNill() throws {
        presenter.viewOpened()
        presenter = nil
        XCTAssertNil(presenter)
    }
    
    func testViewOpenedWithCrash() throws {
        XCTAssertNoThrow(presenterCrash.viewOpened())
    }
  
    
    func testNewContactAdded() throws {
        let contact = ContactsData.init(firstName: "firstName", lastName: "lastName", phone: "920321")
        
        XCTAssertNoThrow(presenter.newContactAdded(contact), "Assert no throw on add new contact method")
    }
    
    func testNewContactAddedWithCrash(){
        let contact = ContactsData.init(firstName: "firstName", lastName: "lastName", phone: "920321")
        
        XCTAssertNoThrow(presenterCrash.newContactAdded(contact), "Assert no throw on add new contact method")
    }

    func testMakeCall() throws {
        let contact = Contact.init(recordId: "id", firstName: "firstname", lastName: "lastName", phone: "89203321")
        XCTAssertNoThrow(presenter.makeCall(to: contact), "Assert no throw on make call")
    }

    func testMakeCallWithCrash(){
        let contact = Contact.init(recordId: "id", firstName: "firstname", lastName: "lastName", phone: "89203321")
        XCTAssertNoThrow(presenterCrash.makeCall(to: contact), "Assert no throw on make call")
    }
    
    func testContactPressed() throws {
        let contact = Contact.init(recordId: "id", firstName: "firstname", lastName: "lastName", phone: "89203321")
        XCTAssertNoThrow(presenter.contactPressed(contact), "Assert no throw on contact pressed")
    }
    
    func testContactPressedWithCrash() throws {
        let contact = Contact.init(recordId: "id", firstName: "firstname", lastName: "lastName", phone: "89203321")
        XCTAssertNoThrow(presenterCrash.contactPressed(contact), "Assert no throw on contact pressed")
    }
    

}
enum TestError: Error {
    case runtimeError(String)
}


class MockGetContactsRepositoryWithCrashes: ContactsRepository {
    func getContacts() throws -> [Contact] {
        throw TestError.runtimeError("failure on getting contacts")
    }
    
    func add(contact: ContactsData) throws {
        throw TestError.runtimeError("failure on getting contacts")
    }
    
    func delete(contact: Contact) throws {
        throw TestError.runtimeError("failure on getting contacts")
    }
    
    func update(contact: Contact) throws {
        throw TestError.runtimeError("failure on getting contacts")
    }
}


class MockGetContactsRepository: ContactsRepository {
    func getContacts() throws -> [Contact] {
        return []
    }
    
    func add(contact: ContactsData) throws {
        print("add method")
    }
    
    func delete(contact: Contact) throws {
        print("delete method")
    }
    
    func update(contact: Contact) throws {
        print("update method")
    }
}

class MockGetCallHistoryRepository: CallHistoryRepository{
    func getHistory() throws -> [CallRecord] {
        return []
    }
    
    func add(record: CallRecord) throws {
        print("add method")
    }
}

class MockGetCallHistoryRepositoryWithCrashes: CallHistoryRepository{
    func getHistory() throws -> [CallRecord] {
        throw TestError.runtimeError("failure on getting contacts")
    }
    
    func add(record: CallRecord) throws {
        throw TestError.runtimeError("failure on getting contacts")
    }
}

class MockView: ContactsView  {
    func showContacts(_ contacts: [Contact]) {
        print("show contacts")
    }
    
    func showError(_ error: Error) {
        print("show error")
    }
    
    func showProgress() {
        print("show progress")
    }
    
    func hideProgress() {
        print("hide progress")
    }
}


