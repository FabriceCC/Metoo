//
//  Misterynumber.swift
//  
//
//  Created by Fabrice on 26/03/2018.
//

import Foundation
// We generate a random number between 1 and 100
var misteryNumber = Int(arc4random_uniform(100)) + 1
var rep: Int?
var i = 1
// For testing purpose we print the number generated
print(misteryNumber)

//we start the game
print("Veuillez entrer un nombre entre 1 to 100"
+ "\n Attention vous n'avez que 5 essais pour trouver le nombre magique !")
//info : readLine let us get the result of a keyboard entry

for i in 1...5 {
    print("Ceci est votre \(i) essai ")
    if let reponse = readLine() {
    print("votre saisie est \(reponse)")
       rep = Int(reponse)
        
    }
    // Lit le code saisi
    print(rep!)
    if rep! > misteryNumber {
        print("Le nombre mystère est inférieur")
        
    } else if rep! < misteryNumber {
        print("Le nombre mystère est plus grand")
    } else {
        print("Bravo vous avez trouvé en  \(i)  fois")
      break
           }
    }


