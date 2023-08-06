//
//  Model.swift
//  ToDoElvir
//
//  Created by Sergey Shatilov on 05.08.2023.
//

import Foundation

var ToDoItems: [[String:Any]] = []

func AddItem(nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name": nameItem,"isCompleted": false])
    saveData()
}

func removeItem(at index: Int){
    ToDoItems.remove(at: index)
    saveData()
}

func changeState(at item: Int) -> Bool {
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    saveData()
    return ToDoItems[item]["isCompleted"] as! Bool
}



func saveData(){
    UserDefaults.standard.set(ToDoItems, forKey: "ToDoDateKey")
    UserDefaults.standard.synchronize()
    
}
func loadData(){
    if let array = UserDefaults.standard.array(forKey: "ToDoDateKey") as? [[String: Any]]{
        ToDoItems = array
    } else {
        ToDoItems = []
    }
}



