// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {
    // 1. Todo Status Enum
    enum Status {
        Pending,
        InProgress,
        Completed
    }

    // 2. Todo Struct
    struct Todo {
        uint id;
        string content;
        Status status;
    }

    // 3. Mapping and Array
    mapping(uint => Todo) public todos;
    uint[] public todoIds;

    // 5. Event
    event TodoAdded(uint id, string content);

    // Track next ID
    uint private nextId = 0;

    // 4. Functions
    function addTodo(string memory _content) public {
        uint currentId = nextId;
        todos[currentId] = Todo(currentId, _content, Status.Pending);
        todoIds.push(currentId);
        emit TodoAdded(currentId, _content);
        nextId++;
    }

    function updateStatus(uint _id, Status _status) public {
        require(_id < nextId, "Todo item does not exist");
        todos[_id].status = _status;
    }

    function getTodo(uint _id) public view returns (uint, string memory, Status) {
        require(_id < nextId, "Todo item does not exist");
        Todo memory todo = todos[_id];
        return (todo.id, todo.content, todo.status);
    }

    function getAllTodoIds() public view returns (uint[] memory) {
        return todoIds;
}// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {
    // 1. Todo Status Enum
    enum Status {
        Pending,
        InProgress,
        Completed
    }

    // 2. Todo Struct
    struct Todo {
        uint id;
        string content;
        Status status;
    }

    // 3. Mapping and Array
    mapping(uint => Todo) public todos;
    uint[] public todoIds;

    // 5. Event
    event TodoAdded(uint id, string content);

    // Track next ID
    uint private nextId = 0;

    // 4. Functions
    function addTodo(string memory _content) public {
        uint currentId = nextId;
        todos[currentId] = Todo(currentId, _content, Status.Pending);
        todoIds.push(currentId);
        emit TodoAdded(currentId, _content);
        nextId++;
    }

    function updateStatus(uint _id, Status _status) public {
        require(_id < nextId, "Todo item does not exist");
        todos[_id].status = _status;
    }

    function getTodo(uint _id) public view returns (uint, string memory, Status) {
        require(_id < nextId, "Todo item does not exist");
        Todo memory todo = todos[_id];
        return (todo.id, todo.content, todo.status);
    }

    function getAllTodoIds() public view returns (uint[] memory) {
        return todoIds;
    }
}