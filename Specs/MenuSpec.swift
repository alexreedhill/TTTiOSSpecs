import Swiftest

class Spec : SwiftestSuite {
  let spec = describe("Spec") {
    
    func createUniqueInstance() -> Menu {
        return Menu()
    }
    
    func getSharedInstance() -> Menu {
        return Menu.sharedInstance
    }
    
    it("creates unique instance") {
        expect(createUniqueInstance()).not().toEqual(nil)
    }
    
    it("creates shared instance") {
        expect(getSharedInstance()).not().toEqual(nil)
    }
    
    it("returns same shared instance") {
        var menu1 = getSharedInstance()
        var menu2 = getSharedInstance()
        expect(menu1).toEqual(menu2)
    }
    
    it("returns different unique instances") {
        var uniqueMenu1 = createUniqueInstance()
        var uniqueMenu2 = createUniqueInstance()
        expect(uniqueMenu1).not().toEqual(uniqueMenu2)
    }
    
    example("unique instance is not equal to shared instance") {
        var uniqueMenu = createUniqueInstance()
        var sharedMenu = getSharedInstance()
        expect(uniqueMenu).not().toEqual(sharedMenu)
    }

    
    it("allows default options to be changed") {
        let menu = getSharedInstance()
        menu.character = "O"
        menu.aiType = "non-minimax"
        menu.firstPlayer = "ai"
        expect(menu.character).toEqual("O")
        expect(menu.aiType).toEqual("non-minimax")
        expect(menu.firstPlayer).toEqual("ai")
    }
  }
}
