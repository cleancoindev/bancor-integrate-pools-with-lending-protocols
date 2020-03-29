pragma solidity 0.4.26;

//@dev - Import Bancor
import "./BancorNetwork.sol";
import "./ContractIds.sol";
import "./converter/BancorConverter.sol";
import "./converter/BancorConverterFactory.sol";
import "./converter/BancorConverterUpgrader.sol";
import "./converter/BancorFormula.sol";
import "./utility/ContractRegistry.sol";
import "./utility/ContractFeatures.sol";
import "./helpers/TestERC20Token.sol";
import "./token/SmartToken.sol";
import "./legacy/BancorGasPriceLimit.sol";

import "./token/interfaces/IERC20Token.sol";
import "./utility/SafeMath.sol";
import "./utility/Owned.sol";

//@dev - Import Compound
import "./compound-protocol/CTokenInterfaces.sol";

//@dev - Import Curve.fi
import "./curve/interface/IyDAI.sol";



/**
 * The BancorPoolIntegrateWithLendingProtocol contract does this and that integrate bancor pool with lending protocol
 */
contract BancorPoolIntegrateWithLendingProtocol is Owned {
    using SafeMath for uint;

    BancorNetwork public bancorNetwork;
    BancorConverter public bancorConverter;
    BancorConverterFactory public bancorConverterFactory;
    BancorConverterUpgrader public bancorConverterUpgrader;
    BancorFormula public bancorFormula;
    ContractRegistry public contractRegistry;
    ContractFeatures public contractFeatures;
    TestERC20Token public testERC20Token;
    SmartToken public smartToken;
    BancorGasPriceLimit public bancorGasPriceLimit;

    IERC20Token public erc20;
    CErc20Interface public cERC20;
    CTokenInterface public cDAI;
    IyDAI public yDAI;

  	constructor(
        address _bancorNetwork,
        address _bancorConverter,
        address _bancorConverterFactory,
        address _bancorConverterUpgrader,
        address _bancorFormula,
        address _contractRegistry,
        address _contractFeatures,
        address _testERC20Token,
        address _smartToken,
        address _bancorGasPriceLimit,

        address _erc20, 
        address _cERC20, 
        address _cToken, 
        address _yDAI
    ) public {
        bancorNetwork = BancorNetwork(_bancorNetwork);
        bancorConverter = BancorConverter(_bancorConverter);
        bancorConverterFactory = BancorConverterFactory(_bancorConverterFactory);
        bancorConverterUpgrader = BancorConverterUpgrader(_bancorConverterUpgrader);
        bancorFormula = BancorFormula(_bancorFormula);
        contractRegistry = ContractRegistry(_contractRegistry);
        contractFeatures = ContractFeatures(_contractFeatures);
        testERC20Token = TestERC20Token(_testERC20Token);
        smartToken = SmartToken(_smartToken);
        bancorGasPriceLimit = BancorGasPriceLimit(_bancorGasPriceLimit);

        erc20 = IERC20Token(_erc20);
        cERC20 = CErc20Interface(_cERC20);
        cDAI = CTokenInterface(_cToken);
        yDAI = IyDAI(_yDAI);
  	}

    /**
     * @dev - deposit (Add Liguidly) with DAI
     **/
    function deposit(address _contract, uint _amount) public returns (bool) {
        // In progress
        erc20.transfer(_contract, _amount);
    }


    /**
     * @dev - Holding and earn interest with lending protocol. (e.g. cDAI, yDAI)
     **/
    function holdingAndEarnInterest() public returns (bool) {
        // In progress
    }

    
}
