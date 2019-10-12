

pragma solidity ^0.5.6;

import "ds-test/test.sol";

import "../../CowriPool.sol";
import "../../ERC20Token.sol";
import "../../Shell.sol";
import "../../ShellFactory.sol";
import "../../testSetup/setupShells.sol";

contract DappTest is DSTest, ShellSetup {
    address shell;

    function setUp () public {

        setupPool();
        setupTokens();

    }

    function testCreateShellWith17Tokens () public {

        shell = setupShellABCDEFGHIJKLMNOPQ();

        address[] memory tokens = Shell(shell).getTokens();

        assertEq(address(testA), tokens[0]);
        assertEq(address(testB), tokens[1]);
        assertEq(address(testC), tokens[2]);
        assertEq(address(testD), tokens[3]);
        assertEq(address(testE), tokens[4]);
        assertEq(address(testF), tokens[5]);
        assertEq(address(testG), tokens[6]);
        assertEq(address(testH), tokens[7]);
        assertEq(address(testI), tokens[8]);
        assertEq(address(testJ), tokens[9]);
        assertEq(address(testK), tokens[10]);
        assertEq(address(testL), tokens[11]);
        assertEq(address(testM), tokens[12]);
        assertEq(address(testN), tokens[13]);
        assertEq(address(testO), tokens[14]);
        assertEq(address(testP), tokens[15]);
        assertEq(address(testQ), tokens[16]);

    }

}