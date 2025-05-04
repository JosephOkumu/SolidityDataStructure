# SolidityToDo
A smart contract utilizing solidity data structure and control flows in a ToDo.

## Features

- **Status Tracking**: Todos can be in one of three states
  - 🕒 Pending
  - 🚧 InProgress
  - ✅ Completed
- **CRUD Operations**:
  - Create new todos
  - Update todo status
  - Read todo details
- **Full Transparency**: All todos stored on-chain

## Contract Structure

### Data Types
```solidity
enum Status {
    Pending,
    InProgress,
    Completed
}

struct Todo {
    uint id;
    string content;
    Status status;
}
```
### License
MIT
