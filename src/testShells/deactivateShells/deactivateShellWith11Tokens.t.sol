pragma solidity ^0.5.6;

import "ds-test/test.sol";

import "../../CowriPool.sol";
import "../../ERC20Token.sol";
import "../../ShellFactory.sol";
import "../../Shell.sol";
import "../../testSetup/setupShells.sol";

contract DappTest is DSTest, ShellSetup {
    address shell;

    function setUp() public {

        setupPool();
        setupTokens();
        shell = setupShellABCDEFGHIJK();

        uint256 amount = 10000 * (10 ** 18);
        uint256 deadline = 0;

        pool.setMinCapital(amount);
        pool.depositLiquidity(shell, amount, amount, deadline);

        pool.activateShell(shell);

        pool.withdrawLiquidity(shell, amount, amount, deadline);

    }

    function testDeactivateShellWtih11Tokens () public {
        pool.deactivateShell(shell);
    }

}