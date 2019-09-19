

pragma solidity ^0.5.6;

import "ds-test/test.sol";

import "../../Prototype.sol";
import "../../ERC20Token.sol";

contract DappTest is DSTest {
    Prototype pool;
    ERC20Token TEST1;
    ERC20Token TEST2;
    ERC20Token TEST3;
    ERC20Token TEST4;
    ERC20Token TEST5;
    ERC20Token TEST6;
    ERC20Token TEST7;
    ERC20Token TEST8;
    address shell;

    function setUp () public {

        uint256 tokenAmount = 1000000000 * (10 ** 18);
        TEST1 = new ERC20Token("TEST THREE", "TEST3", 18, tokenAmount);
        TEST2 = new ERC20Token("TEST THREE", "TEST3", 18, tokenAmount);
        TEST3 = new ERC20Token("TEST THREE", "TEST3", 18, tokenAmount);
        TEST4 = new ERC20Token("TEST THREE", "TEST3", 18, tokenAmount);
        TEST5 = new ERC20Token("TEST THREE", "TEST3", 18, tokenAmount);
        TEST6 = new ERC20Token("TEST THREE", "TEST3", 18, tokenAmount);
        TEST7 = new ERC20Token("TEST THREE", "TEST3", 18, tokenAmount);
        TEST8 = new ERC20Token("TEST THREE", "TEST3", 18, tokenAmount);

        pool = new Prototype();

        TEST1.approve(address(pool), tokenAmount);
        TEST2.approve(address(pool), tokenAmount);
        TEST3.approve(address(pool), tokenAmount);
        TEST4.approve(address(pool), tokenAmount);
        TEST5.approve(address(pool), tokenAmount);
        TEST6.approve(address(pool), tokenAmount);
        TEST7.approve(address(pool), tokenAmount);
        TEST8.approve(address(pool), tokenAmount);

    }

    function testCreateShellWith8Tokens () public {
        address[] memory shellAddrs = new address[](8);
        shellAddrs[0] = address(TEST1);
        shellAddrs[1] = address(TEST2);
        shellAddrs[2] = address(TEST3);
        shellAddrs[3] = address(TEST4);
        shellAddrs[4] = address(TEST5);
        shellAddrs[5] = address(TEST6);
        shellAddrs[6] = address(TEST7);
        shellAddrs[7] = address(TEST8);

        shell = pool.createShell(shellAddrs);
    }

}