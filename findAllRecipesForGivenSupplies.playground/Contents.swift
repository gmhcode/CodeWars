import UIKit


//2115. Find All Possible Recipes from Given Supplies
//Medium
//
//656
//
//49
//
//Add to List
//
//Share
//You have information about n different recipes. You are given a string array recipes and a 2D string array ingredients. The ith recipe has the name recipes[i], and you can create it if you have all the needed ingredients from ingredients[i]. Ingredients to a recipe may need to be created from other recipes, i.e., ingredients[i] may contain a string that is in recipes.
//
//You are also given a string array supplies containing all the ingredients that you initially have, and you have an infinite supply of all of them.
//
//Return a list of all the recipes that you can create. You may return the answer in any order.
//
//Note that two recipes may contain each other in their ingredients.
//
//
//
//Example 1:
//
//Input: recipes = ["bread"], ingredients = [["yeast","flour"]], supplies = ["yeast","flour","corn"]
//Output: ["bread"]
//Explanation:
//We can create "bread" since we have the ingredients "yeast" and "flour".
//Example 2:
//
//Input: recipes = ["bread","sandwich"], ingredients = [["yeast","flour"],["bread","meat"]], supplies = ["yeast","flour","meat"]
//Output: ["bread","sandwich"]
//Explanation:
//We can create "bread" since we have the ingredients "yeast" and "flour".
//We can create "sandwich" since we have the ingredient "meat" and can create the ingredient "bread".
//Example 3:
//
//Input: recipes = ["bread","sandwich","burger"], ingredients = [["yeast","flour"],["bread","meat"],["sandwich","meat","bread"]], supplies = ["yeast","flour","meat"]
//Output: ["bread","sandwich","burger"]
//Explanation:
//We can create "bread" since we have the ingredients "yeast" and "flour".
//We can create "sandwich" since we have the ingredient "meat" and can create the ingredient "bread".
//We can create "burger" since we have the ingredient "meat" and can create the ingredients "bread" and "sandwich".


class Solution {
    
    func findAllRecipes(_ recipes: [String], _ ingredients: [[String]], _ supplies: [String]) -> [String] {
        
        var suppliesDict: [String: String] = [:]
        var editableRecipes = recipes
        var editableIngredients: [[String]] = ingredients
        var returningArray: [String] = []
        for i in supplies {
            suppliesDict[i] = i
        }
        
        
        while true {
            
            let unmatched = populateAllMatched(editableRecipes,editableIngredients, suppliesDict)
            if unmatched == [] {
                break
            }
            
            for (index,i) in unmatched.enumerated() {
                
                suppliesDict[i] = i
                let removingIndex = editableRecipes.firstIndex(where: {$0 == i})!
                editableRecipes.remove(at: removingIndex)
                editableIngredients.remove(at: removingIndex)
                
                returningArray.append(i)
                
            }
            
        }
        return returningArray
        
    }
    
    
    func populateAllMatched(_ recipes: [String], _ ingredients: [[String]], _ supplies: [String:String]) -> [String] {

       var matched: [String] = []
        
        for (index,i) in recipes.enumerated() {
            
            var contains = true
            if i == "x" {
                print(i)
                print( ingredients[index])
            }
            for j in ingredients[index] {
               if supplies[j] != nil {
                   contains = true
               } else {
                   contains = false
                   break
               }
                
            }
            if contains {
                matched.append(i)
            }
            
        }
        

        return matched
    }
    
}
