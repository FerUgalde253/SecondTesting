//
//  LogInRegisterTest.swift
//  SingUpTestingTests
//
//  Created by Fernando Ugalde on 19/10/23.
//

import XCTest
@testable import SingUpTesting

final class LogInRegisterTest: XCTestCase {

    func testSingUpModel_WhenANameIsGiven_ShouldPass() {
        //Given
        let firstName: String = "Miguel"
        let sut = ValidateNameClass()
        //When
        let validName = sut.ValidationName(name: firstName)
        //Then/Assert
        XCTAssertTrue(validName, "Validate if is not empty")
    }
    
    func testSingUpFunction_WhenNameIsGivenAndIsEmpty_ShouldnotPass(){
        //Given
        let firstName: String = ""
        let sut = ValidateNameClass()
        //When
        let invalidName = sut.ValidationName(name: firstName)
        //Then/Assert
        XCTAssertFalse(invalidName, "Validate if is empty, if true the srtring is not empty")
    }
    
    func testSingUpFunction_WhenNameIsLessThanTwoCharacters_ShouldNotPass(){
        //Given
        let firstName: String = "f"
        let sut = ValidateNameClass()
        //When
        let shortName = sut.ValidationName(name: firstName)
        //Then/Assert
        XCTAssertFalse(shortName,"If False should pass because is shorter than necesary")
    }
    
    func testSingUpFunction_WhenNameIsLessThanTenCharacters_ShouldNotPass(){
        //Given
        let firstName: String = "FernanandoUgalde"
        let sut = ValidateNameClass()
        //When
        let shortName = sut.ValidationName(name: firstName)
        //Then/Assert
        XCTAssertFalse(shortName,"If False should pass because is shorter than necesary")
    }
}
