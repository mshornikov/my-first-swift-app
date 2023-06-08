//
//  CourseViewController.swift
//  MyFirstApp
//
//  Created by Михаил Шорников on 08.06.2023.
//

import UIKit

class CourseViewController: UITableViewController {
    private let lectureCellId = "lectureCellId"
    private lazy var course: Course = {
        let storage = CourseStorage()
        return storage.load()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return course.lectures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: lectureCellId, for: indexPath)
        let lecture = course.lectures[indexPath.row]
        let prefix = String(format: "%02d", indexPath.row + 1)
        cell.textLabel?.text  = "\(prefix) - \(lecture.name)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let lecture = course.lectures[indexPath.row]
        let lectureViewContoller = LectureViewContoller()
        lectureViewContoller.lecture = lecture
        navigationController?.pushViewController(lectureViewContoller, animated: true)
    }
}

