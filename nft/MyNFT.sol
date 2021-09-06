pragma solidity ^0.6.0;
import "Address.sol";
import "Strings.sol";
import "Counters.sol";
import "SafeMath.sol";
import "EnumerableSet.sol";
import "EnumerableMap.sol";
import "Context.sol";
import "AccessControl.sol";
import "Ownable.sol";
import "ERC165.sol";
import "IERC165.sol";
import "ERC721.sol";
import "IERC721.sol";
import "IERC721Metadata.sol";
import "IERC721Enumerable.sol";
import "IERC721Receiver.sol";
contract GameItem is ERC721 , Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() public ERC721("CryptoGladiator", "CG") {
  		 Ownable(msg.sender);
    }
    //创建 

  function setCreateProperty(uint32 _propertyType, uint256 _id,address _owner)  public onlyOwner   returns (uint256)
    {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(_owner, newItemId,_propertyType,_id);
        _setTokenURI(newItemId,_id);
        return newItemId;
    }
     //销毁
    function destroyGoods(uint256 tokenId) public  onlyOwner{
           _burn(tokenId);
    }
    
 
    
     function getTokensId( uint256 id) public view onlyOwner  returns (uint256){
            return     holderTokensId(id);
     }
    
   

}pragma solidity ^0.6.0;
import "Address.sol";
import "Strings.sol";
import "Counters.sol";
import "SafeMath.sol";
import "EnumerableSet.sol";
import "EnumerableMap.sol";
import "Context.sol";
import "AccessControl.sol";
import "Ownable.sol";
import "ERC165.sol";
import "IERC165.sol";
import "ERC721.sol";
import "IERC721.sol";
import "IERC721Metadata.sol";
import "IERC721Enumerable.sol";
import "IERC721Receiver.sol";
contract GameItem is ERC721 , Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() public ERC721("CryptoGladiator", "CG") {
  		 Ownable(msg.sender);
    }
    //创建 

  function setCreateProperty(uint32 _propertyType, uint256 _id,address _owner)  public onlyOwner   returns (uint256)
    {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(_owner, newItemId,_propertyType,_id);
        _setTokenURI(newItemId,_id);
        return newItemId;
    }
     //销毁
    function destroyGoods(uint256 tokenId) public  onlyOwner{
           _burn(tokenId);
    }
    
 
    
     function getTokensId( uint256 id) public view onlyOwner  returns (uint256){
            return     holderTokensId(id);
     }
    
   

}