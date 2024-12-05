import XCTest
@testable import BeBeTranslator

final class BeBeTranslatorTests: XCTestCase {
    func testThatItLeavesTheSentenceUnchanged_GivenTheSentenceContainsNoCharactersToCypher()  {
        let beBeTranslator = BeBeTranslator(cyphering: "a")
        
        XCTAssertEqual(beBeTranslator.translate("Peter"), "Peter")
    }
    
    func testThatItShouldCypherUsingTheCharacter_GivenOnlyOneCypherChar() {
        let bebeTranslator = BeBeTranslator(cyphering: "e")
        XCTAssertEqual(bebeTranslator.translate("Peter"), "Pebeteber")
    }
    
    func testThatItShouldUseAllChars_GivenMoreCypherCharactersAreGiven() {
        let bebeTranslator = BeBeTranslator(cyphering: "ea")
        XCTAssertEqual(bebeTranslator.translate("Peter Bauer"), "Pebeteber Babaueber")
    }
    
    func testThatItShouldUseUpperAndLowerCaseBs_GivenUpperAndLowerCaseLettersToCypher() {
        let bebeTranslator = BeBeTranslator(cyphering: "Pea")
        XCTAssertEqual(bebeTranslator.translate("Peter Bauer"), "PBPebeteber Babaueber")
    }
    
    func testThatItTranslateTheReadmeExampleCorrectly() async throws {
        let bebeTranslator = BeBeTranslator(cyphering: "ao")
        XCTAssertEqual(bebeTranslator.translate("classroom"), "clabassroboobom")
    }
}
