class Task {
    let id: String
    
    init(id: String) {
        self.id = id
    }
    
    class func compose(id: String) -> Task {
        return Task(id: id)
    }
}

// I never call the code below, yet it's necessary to reproduce the bug

private func decodeTasks(tasks: [[String: AnyObject]]) -> [Task?]? {
    return tasks.map(decodeTask)
}

private func decodeTask(task: [String: AnyObject]) -> Task? {
    return Task.compose <^>
        (task["id"] as? String)
}