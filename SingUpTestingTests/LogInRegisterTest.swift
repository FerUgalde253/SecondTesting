//
//  LogInRegisterTest.swift
//  SingUpTestingTests
//
//  Created by Fernando Ugalde on 19/10/23.
//

import XCTest
@testable import SingUpTesting

final class LogInRegisterTest: XCTestCase {
    
    let sut = ValidateNameClass()

    func testSingUpModel_WhenANameIsGiven_ShouldPass() {
        //Given
        //When
        let validName = sut.ValidationName(name: "Miguel")
        //Then/Assert
        XCTAssertTrue(validName, "Validate if is not empty")
    }
    
    func testSingUpFunction_WhenNameIsGivenAndIsEmpty_ShouldnotPass(){
        //Given
        //When
        let invalidName = sut.ValidationName(name: "")
        //Then/Assert
        XCTAssertFalse(invalidName, "Validate if is empty, if true the srtring is not empty")
    }
    
    func testSingUpFunction_WhenNameIsLessThanTwoCharacters_ShouldNotPass(){
        //Given
        //When
        let shortName = sut.ValidationName(name: "f")
        //Then/Assert
        XCTAssertFalse(shortName,"If False should pass because is shorter than necesary")
    }
    
    func testSingUpFunction_WhenNameIsLessThanTenCharacters_ShouldNotPass(){
        //Given
        //When
        let shortName = sut.ValidationName(name: "FernanandoUgalde")
        //Then/Assert
        XCTAssertFalse(shortName,"If False should pass because is shorter than necesary")
    }
    
    func testPasswordFunction_WhenPasswordsAreEqual_ShouldPass(){
        //Given
        //When
        let shortName = sut.ValidatePassword(password1: "1234", password2: "1234")
        //Then/Assert
        XCTAssertTrue(shortName, "Should pass if bouth passwords are equal")
    }
    
    func testPasswordFunction_WhenPasswordsAreNotEqual_ShouldPass(){
        //Given
        //When
        let shortName = sut.ValidatePassword(password1: "1224", password2: "1234")
        //Then/Assert
        XCTAssertFalse(shortName, "Should pass if bouth passwords are Diferente")
    }
}
