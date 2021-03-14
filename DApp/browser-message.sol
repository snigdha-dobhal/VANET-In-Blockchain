pragma solidity ^0.4.18;
contract MESSAGE {
    string info;
    string location;
    string street;
    string time;
    event message(
        string info,
        string location,
        string street,
        string time
    );
    function setInfo(string _info, string _location, string _street, string _time) public{
        info=_info;
        location=_location;
        street=_street;
        time=_time;
        message(_info, _location, _street, _time);
    }
    function getInfo() public constant returns (string, string, string, string){
        return (info, location, street, time);
    }
    
}
