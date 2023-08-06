//
//  Model.swift
//  ToDoElvir
//
//  Created by Sergey Shatilov on 05.08.2023.
//

import Foundation

var ToDoItems: [[String:Any]] = [["Name": "Позвонить маме", "isCompleted": true], ["Name": "Дописать приложение", "isCompleted": false],["Name": "Отметить задание", "isCompleted": false]]

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
    print("Сохраняем данный!")
    
}
func loadData(){
    
}



