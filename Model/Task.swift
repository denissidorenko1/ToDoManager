// тип задачи
enum TaskPriority {
    case normal
    case important
}

// состояние задачи
enum TaskStatus: Int {
    case planned
    case completed
}

// требования к типу, описывающему сущность "Задача"
protocol TaskProtocol {
    var title: String { get set }
    var type: TaskPriority { get set }
    var status: TaskStatus { get set }
}

// сущность "Задача"
struct Task: TaskProtocol {
    var title: String
    var type: TaskPriority
    var status: TaskStatus
}
