
### This project is based on [Build Your First Blockchain App Using Ethereum Smart Contracts and Solidity  tutorial](https://www.youtube.com/watch?v=coQ5dg8wM2o) ### 
### List of commands to run: ###
* Prerequsites: Installed node, ganache (from truffle), metamask (chrome extension)
- `$ npm install -g truffle@5.0.2`
##### If you are getting a "Keccak bindings compilation fail. Pure JS implementation will be used.", run following:
- `$ npm install -g truffle --unsafe-perm`
- `$ npm install --global windows-build-tools`
- `$ truffle init` // create truffle project
- Create `package.json`
- `$ npm init`
- Update `truffle-config.js`
- `$ truffle compile` 
##### If you are getting  a "truffle has not been deployed to detected network" error
- `$ truffle migrate --reset --all` 
- `$ truffle console` // to retrieve the smart contract
    - `Todo = await Todo.deployed()`
    - `Todo.address`
    - `taskCount = await Todo.TaskCount()`
    - `taskCount.toNumber()`
    - `CTRL+C` // to exit
- `$ git init`, `git add` ., `git commit -m` // choose your message, e.g. "First commit"
- `$ truffle compile`
- `$ truffle migrate --reset`
- `$ truffle console`
    - `todo = await Todo.deployed()`
    - `todo.address`
    - `task = await todo.tasks(1)`
    - `task`
    - `task.id`
    - `task.id.toNumber()`
    - `task.content`
- `$ npm run dev` // starting the lite-server
- `$ truffle test`

Enjoy 🌹

