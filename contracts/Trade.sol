pragma solidity >=0.5.1 <0.6.0;

contract Trade{
    
    event TradeCreated(bytes32 _tradeID);
    
    struct tradeStruct{
        bytes32 tradeID ;
    }
    
    mapping(bytes32 => tradeStruct) tradeList;
    
    function addTrade(bytes32 _tradeID) public {
        tradeList[_tradeID] = tradeStruct(_tradeID);
        emit TradeCreated(_tradeID);
    }
    
    function getTrade(bytes32 _tradeID) public view returns(bytes32){
        return(tradeList[_tradeID].tradeID);
    }
}