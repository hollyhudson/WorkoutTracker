//
//  ViewController.swift
//  WorkoutTracker
//
//  Created by Holly Hudson on 24/09/2018.
//  Copyright © 2018 Holly Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var contents = String()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let routineFile = URL(fileURLWithPath: "/Users/holly/Library/Mobile Documents/com~apple~CloudDocs/WorkoutTracker/routine.txt")
		
		func processRoutineFile(routine: URL) {
			do {
				contents = try String(contentsOf: routine)
			} catch {
				print("couldn't read file")
			}
			let exercises = contents.split(separator: "\n")
			for exercise in exercises {
				print("\(exercise)")
			}
		}
		processRoutineFile(routine: routineFile)
	}
}

