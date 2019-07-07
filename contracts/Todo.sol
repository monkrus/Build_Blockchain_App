pragma solidity ^0.5.0;

contract Todo {
//state variable, written in the blockchain
// public keyword allows to READ the value for no charge
uint public taskCount = 0;

struct Task  {
	uint id;
	string content;
	bool completed;
 }

// type of DB, key(uint)-> value(Task)
 mapping (uint => Task) public tasks;

event TaskCreated (
uint id,
string content,
bool completed
);

event TaskCompleted (
uint id,
bool completed
);
 constructor() public {
 	createTask("Trust your instincts");
 }

// puts Task inside the mapping
// string memory is the content of the Task
function createTask(string memory _content) public {
taskCount ++;
//put taskCount inside the mapping
tasks[taskCount] = Task(taskCount, _content, false);
emit TaskCreated (taskCount, _content, false);
}

function toggleCompleted(uint _id) public {
    Task memory _task = tasks[_id];
    _task.completed = !_task.completed;
    tasks[_id] = _task;
    emit TaskCompleted(_id, _task.completed);
	}
}

	






