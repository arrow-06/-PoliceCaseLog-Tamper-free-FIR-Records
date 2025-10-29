// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
 * @title PoliceCaseLog – Tamper-free FIR Records
 * @dev A blockchain-based system to record and verify FIRs securely and immutably.
 */

contract PoliceCaseLog {
    struct FIR {
        uint id;
        string complainantName;
        string caseDetails;
        string policeStation;
        uint timestamp;
        address filedBy;
    }

    mapping(uint => FIR) private firRecords;
    uint public firCount;

    event FIRFiled(uint id, string complainantName, string policeStation, uint timestamp);
    event FIRViewed(uint id, string complainantName, string policeStation);

    // Function to file a new FIR
    function fileFIR(
        string memory _complainantName,
        string memory _caseDetails,
        string memory _policeStation
    ) public {
        firCount++;
        firRecords[firCount] = FIR({
            id: firCount,
            complainantName: _complainantName,
            caseDetails: _caseDetails,
            policeStation: _policeStation,
            timestamp: block.timestamp,
            filedBy: msg.sender
        });
        emit FIRFiled(firCount, _complainantName, _policeStation, block.timestamp);
    }

    // Function to get details of an FIR
    function getFIR(uint _id)
        public
        view
        returns (
            string memory complainantName,
            string memory caseDetails,
            string memory policeStation,
            uint timestamp,
            address filedBy
        )
    {
        require(_id > 0 && _id <= firCount, "Invalid FIR ID");
        FIR memory fir = firRecords[_id];
        //emit FIRViewed(_id, fir.complainantName, fir.policeStation);
        return (fir.complainantName, fir.caseDetails, fir.policeStation, fir.timestamp, fir.filedBy);
    }

    // Function to verify if FIR exists
    function verifyFIR(uint _id) public view returns (bool) {
        return _id > 0 && _id <= firCount;
    }
}

