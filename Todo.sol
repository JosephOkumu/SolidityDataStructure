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

    
}