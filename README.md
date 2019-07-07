
## This project is based on [Build Your First Blockchain App Using Ethereum Smart Contracts and Solidity  tutorial](https://www.youtube.com/watch?v=coQ5dg8wM2o) ## 
1. Prerequsites: Installed node, ganache(from truffle), metamask
## List of commands to run ##
2. 'npm install -g truffle@5.0.2'
3. If you are getting a "Keccak bindings compilation fail. Pure JS implementation will be used.", run following:
   `npm install -g truffle --unsafe-perm`
   `npm install --global windows-build-tools`
4. `truffle init` ( create truffle project)
5. Create `package.json`
6. `npm init`
7.  Update `truffle-config.js`
8. `truffle compile` 
9. If you are getting  a "truffle has not been deployed to detected network" error
   `truffle migrate` --reset --all 
10. `truffle console` (to retrieve the smart contract)
    `Todo = await Todo.deployed()`
    `Todo.address`
    `taskCount = await Todo.TaskCount()`
    `taskCount.toNumber()`
     `CTRL+C` to exit, 
11. `git init`, `git add` ., `git commit -m` (choose your message, e.g. "First commit")
12.  `truffle compile`
13. truffle migrate --reset
14. truffle console
    `todo = await Todo.deployed()`
    `todo.address`
    `task = await todo.tasks(1)`
    `task`
    `task.id`
    `task.id.toNumber()`
    `task.content`
15. `npm run dev` (starting the lite-server)
16.  `truffle test`

