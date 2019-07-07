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
}

	//test





// prereq.  node, ganache(from truffle), metamask
// npm install -g truffle@5.0.2
// if getting a "Keccak bindings compilation fail. Pure JS implementation will be used."
// npm install -g truffle --unsafe-perm
// npm install --global windows-build-tools
// truffle init ( create truf project)
// package.json
// npm init
// update truffle-config.js
// truffle compiate 
// truffle migrate --reset --all if you are getting  an "truffle has not been deployed to detected network" error
// truffle console (to retrieve the smart contract)
// type Todo = await Todo.deployed()
// Todo.address
// taskCount = await Todo.TaskCount()
// taskCount.toNumber()
// CTRL+c to exit, 
// git init, git add ., git commit "Project Setup"
// truffle compile
// truffle migrate --reset
// truffle console
// todo = await Todo.deployed()
// todo.address
// task = await todo.tasks(1)
// task
// task.id
// task.id.toNumber()
// task.content
// npm run dev (starting the server)
// truffle test




