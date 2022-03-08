// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.3;

contract Task {
    string public zuriTask;
    string public tag = "Hello World ";

    constructor(string memory _taskInfo) {
        zuriTask = _taskInfo;
    }

    function createTask(string memory _taskName) public {
        zuriTask = _taskName;
    }

    function viewTask() public view returns (string memory){
        return string(abi.encodePacked(tag, zuriTask));
    }
}