/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/
/*
struct MasterYoda {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 9 }
  func prescience() -> Int { return 5 }
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "Do or do not." }
}

struct MasterObiWan {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

struct DarthVader {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func prescience() -> Int { return 5 }
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return false }
}

struct DarthSidious {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return true }
}

struct DarthTyrannous {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func forceChoke() -> Bool { return false }
  func forceLightning() -> Bool { return true }
}
*/
/*:
 Place your refactored structs below:
 */
protocol ForceAbilities {
    func lightSaberSkill() -> Int
    func telekinesis() -> Int
    func prescience() -> Int
}

extension ForceAbilities {
    func lightSaberSkill() -> Int {
        return 8
    }
    func telekinesis() -> Int {
        return 5
    }
    func prescience() -> Int {
        return 5
    }
}

protocol JediAbilities {
    func mindControl() -> String
    func introspection() -> String
}

extension JediAbilities {
    func introspection() -> String {
        return "Search your feelings."
    }
}

protocol SithAbilities {
    func forceChoke() -> Bool
    func forceLightning() -> Bool
}

extension SithAbilities {
    func forceChoke() -> Bool {
        return false
    }
    func forceLightning() -> Bool {
        return false
    }
}

protocol Sith: ForceAbilities, SithAbilities {}
protocol Jedi: ForceAbilities, JediAbilities {}

struct MasterYoda {}
struct MasterObiWan {}
struct MasterQuiGon {}
struct DarthVader {}
struct DarthSidious {}
struct DarthTyrannous {}

extension MasterYoda: Jedi {
    func telekinesis() -> Int {
        return 9
    }
    func mindControl() -> String {
        return "Do or do not."
    }
}

extension MasterObiWan: Jedi {
    func mindControl() -> String {
        return "These are not the droids you're looking for."
    }
}

extension MasterQuiGon: Jedi {
    func mindControl() -> String {
        return "Republic credits will do."
    }
    func introspection() -> String {
        return "Feel, don't think. Trust your instincts."
    }
}

extension DarthVader: Sith {
    func lightSaberSkill() -> Int {
        return 9
    }
    func telekinesis() -> Int {
        return 8
    }
    func forceLightning() -> Bool {
        return false
    }
}

extension DarthSidious: Sith {
    func telekinesis() -> Int {
        return 7
    }
    func prescience() -> Int {
        return 6
    }
}

extension DarthTyrannous: Sith {
    func forceChoke() -> Bool {
        return false
    }
}

let yoda = MasterYoda()
let obi = MasterObiWan()
let quiGon = MasterQuiGon()
let vader = DarthVader()
let sidious = DarthSidious()

sidious.telekinesis()


yoda.introspection()
yoda.telekinesis()
yoda.mindControl()



