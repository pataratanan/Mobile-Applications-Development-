//
//  support.swift
//  iWorkout
//
//  Created by Pataratanan Visitserngtrakul on 24/1/22.
//  Copyright © 2022 Pataratanan Visitserngtrakul. All rights reserved.
//
/*

Pataratanan Visitserngtrakul 20310367

DECLARATION
I hereby certify that no other part of this submission has been copied from any other sources, including the Internet, books or other student’s work except the ones I have listed below. No part of the code has been written/produced for me by another person or copied from any other source.
I hold a copy of this assignment that I can produce if the original is lost or damaged.

*/

//this support.swift holding saveContext() function to use the purpose of OOP style
import Foundation
import CoreData
import UIKit

let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

func saveContext(){
    
    if context.hasChanges{
        do {
            try context.save()
        }
        catch{
            print(error)
        }
    }
}
