// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract GradeSystem {

    mapping(address => uint256) public studentGrades;
    address private ownerAddress;
    event GradeUpdated(address indexed student, uint256 grade);

    constructor() {
        ownerAddress = msg.sender;
    }
    // require function
    function updateGrade(address _student, uint256 _grade) public {
        require(msg.sender == ownerAddress, "Only owner can update grades");
        require(_grade >= 0 && _grade <= 100, "Invalid grade value");
        assert(ownerAddress != address(0));

        studentGrades[_student] = _grade;

        emit GradeUpdated(_student, _grade);
    }

    // revert function

    function getGrade(address _student) public view returns (uint256) {
        if (studentGrades[_student] == 0) {
            revert("Grade does not exist for this student");
        }

        return studentGrades[_student];
    }

    function owner() public view returns (address) {
        return ownerAddress;
    }

    // require function

    function updateGradeWithRevert(address _student, uint256 _grade) public {
        // Revert if the sender is not the owner
        if (msg.sender != ownerAddress) {
            revert("Only owner can update grades");
        }
        if (_grade < 0 || _grade > 100) {
            revert("Invalid grade value");
        }

        assert(ownerAddress != address(0));

        studentGrades[_student] = _grade;

        emit GradeUpdated(_student, _grade);
    }

    // assert function

    function checkInvariant() public view returns (bool) {
        assert(ownerAddress != address(0));
        return true;
    }
}
