pragma solidity ^0.5.6;

import "ds-test/test.sol";

import "../../Prototype.sol";
import "../../ERC20Token.sol";

contract DappTest is DSTest {

    Prototype pool;
    address shell1;
    address shell2;
    address shell3;
    address shell4;
    address shell5;
    address shell6;
    address shell7;
    address shell8;
    address shell9;
    address shell10;
    address shell11;
    address shell12;
    address shell13;
    address shell14;
    ERC20Token TEST1;
    ERC20Token TEST2;
    ERC20Token TEST3;
    ERC20Token TEST4;
    ERC20Token TEST5;
    ERC20Token TEST6;
    ERC20Token TEST7;
    ERC20Token TEST8;
    ERC20Token TEST9;
    ERC20Token TEST10;
    ERC20Token TEST11;
    ERC20Token TEST12;
    uint256 shell1Liquidity;
    uint256 shell2Liquidity;
    uint256 shell3Liquidity;
    uint256 shell4Liquidity;
    uint256 shell5Liquidity;
    uint256 shell6Liquidity;
    uint256 shell7Liquidity;
    uint256 shell8Liquidity;
    uint256 shell9Liquidity;
    uint256 shell10Liquidity;
    uint256 shell11Liquidity;

    function setUp () public {
        uint256 tokenAmount = 10000000000 * (10 ** 18);
        uint8 decimalAmount = 18;
        TEST1 = new ERC20Token("TEST ONE", "TEST1", decimalAmount, tokenAmount);
        TEST2 = new ERC20Token("TEST TWO", "TEST2", decimalAmount, tokenAmount);
        TEST3 = new ERC20Token("TEST THREE", "TEST3", decimalAmount, tokenAmount);
        TEST4 = new ERC20Token("TEST ONE", "TEST1", decimalAmount, tokenAmount);
        TEST5 = new ERC20Token("TEST ONE", "TEST1", decimalAmount, tokenAmount);
        TEST6 = new ERC20Token("TEST ONE", "TEST1", decimalAmount, tokenAmount);
        TEST7 = new ERC20Token("TEST TWO", "TEST2", decimalAmount, tokenAmount);
        TEST8 = new ERC20Token("TEST THREE", "TEST3", decimalAmount, tokenAmount);
        TEST9 = new ERC20Token("TEST TWO", "TEST2", decimalAmount, tokenAmount);
        TEST10 = new ERC20Token("TEST THREE", "TEST3", decimalAmount, tokenAmount);
        TEST11 = new ERC20Token("TEST TWO", "TEST2", decimalAmount, tokenAmount);
        TEST12 = new ERC20Token("TEST THREE", "TEST3", decimalAmount, tokenAmount);

        pool = new Prototype();

        TEST1.approve(address(pool), tokenAmount);
        TEST2.approve(address(pool), tokenAmount);
        TEST3.approve(address(pool), tokenAmount);
        TEST4.approve(address(pool), tokenAmount);
        TEST5.approve(address(pool), tokenAmount);
        TEST6.approve(address(pool), tokenAmount);
        TEST7.approve(address(pool), tokenAmount);
        TEST8.approve(address(pool), tokenAmount);
        TEST9.approve(address(pool), tokenAmount);
        TEST10.approve(address(pool), tokenAmount);
        TEST11.approve(address(pool), tokenAmount);
        TEST12.approve(address(pool), tokenAmount);

        address[] memory shell1Addrs = new address[](2);
        shell1Addrs[0] = address(TEST1);
        shell1Addrs[1] = address(TEST2);
        shell1 = pool.createShell(shell1Addrs);

        address[] memory shell2Addrs = new address[](3);
        shell2Addrs[0] = address(TEST1);
        shell2Addrs[1] = address(TEST2);
        shell2Addrs[2] = address(TEST3);
        shell2 = pool.createShell(shell2Addrs);

        address[] memory shell3Addrs = new address[](3);
        shell3Addrs[0] = address(TEST1);
        shell3Addrs[1] = address(TEST2);
        shell3Addrs[2] = address(TEST4);
        shell3 = pool.createShell(shell3Addrs);

        address[] memory shell4Addrs = new address[](3);
        shell4Addrs[0] = address(TEST1);
        shell4Addrs[1] = address(TEST2);
        shell4Addrs[2] = address(TEST5);
        shell4 = pool.createShell(shell4Addrs);

        address[] memory shell5Addrs = new address[](3);
        shell5Addrs[0] = address(TEST1);
        shell5Addrs[1] = address(TEST2);
        shell5Addrs[2] = address(TEST6);
        shell5 = pool.createShell(shell5Addrs);

        address[] memory shell6Addrs = new address[](3);
        shell6Addrs[0] = address(TEST1);
        shell6Addrs[1] = address(TEST2);
        shell6Addrs[2] = address(TEST7);
        shell6 = pool.createShell(shell6Addrs);

        address[] memory shell7Addrs = new address[](3);
        shell7Addrs[0] = address(TEST1);
        shell7Addrs[1] = address(TEST2);
        shell7Addrs[2] = address(TEST8);
        shell7 = pool.createShell(shell7Addrs);

        address[] memory shell8Addrs = new address[](3);
        shell8Addrs[0] = address(TEST1);
        shell8Addrs[1] = address(TEST2);
        shell8Addrs[2] = address(TEST9);
        shell8 = pool.createShell(shell8Addrs);

        address[] memory shell9Addrs = new address[](3);
        shell9Addrs[0] = address(TEST1);
        shell9Addrs[1] = address(TEST2);
        shell9Addrs[2] = address(TEST10);
        shell9 = pool.createShell(shell9Addrs);

        address[] memory shell10Addrs = new address[](3);
        shell10Addrs[0] = address(TEST1);
        shell10Addrs[1] = address(TEST2);
        shell10Addrs[2] = address(TEST11);
        shell10 = pool.createShell(shell10Addrs);

        address[] memory shell11Addrs = new address[](3);
        shell11Addrs[0] = address(TEST1);
        shell11Addrs[1] = address(TEST2);
        shell11Addrs[2] = address(TEST12);
        shell11 = pool.createShell(shell11Addrs);


        shell1Liquidity = pool.depositLiquidity(shell1, 10000 * ( 10 ** 18));
        shell2Liquidity = pool.depositLiquidity(shell2, 30000 * ( 10 ** 18));
        shell3Liquidity = pool.depositLiquidity(shell3, 30000 * ( 10 ** 18));
        shell4Liquidity = pool.depositLiquidity(shell4, 30000 * ( 10 ** 18));
        shell5Liquidity = pool.depositLiquidity(shell5, 30000 * ( 10 ** 18));
        shell6Liquidity = pool.depositLiquidity(shell6, 30000 * ( 10 ** 18));
        shell7Liquidity = pool.depositLiquidity(shell7, 30000 * ( 10 ** 18));
        shell8Liquidity = pool.depositLiquidity(shell8, 30000 * ( 10 ** 18));
        shell9Liquidity = pool.depositLiquidity(shell9, 30000 * ( 10 ** 18));
        shell10Liquidity = pool.depositLiquidity(shell10, 30000 * ( 10 ** 18));
        shell11Liquidity = pool.depositLiquidity(shell11, 30000 * ( 10 ** 18));

        pool.activateShell(shell1);
        pool.activateShell(shell2);
        pool.activateShell(shell3);
        pool.activateShell(shell4);
        pool.activateShell(shell5);
        pool.activateShell(shell6);
        pool.activateShell(shell7);
        pool.activateShell(shell8);
        pool.activateShell(shell9);
        pool.activateShell(shell10);
        pool.activateShell(shell11);

    }


    function testSwapByOriginAtoBWith11Shells () public {

        // assertEq(
            pool.swapByOrigin(100 * ( 10 ** 18 ), address(TEST1), address(TEST2));
            // 99750623441396508728
        // );

        // assertEq(
        //     pool.getShellBalanceOf(shell1, address(TEST1)),
        //     10025000000000000000000
        // );

        // assertEq(
        //     pool.getShellBalanceOf(shell2, address(TEST1)),
        //     30075000000000000000000
        // );

        // assertEq(
        //     pool.getShellBalanceOf(shell1, address(TEST2)),
        //     9975062344139650872818
        // );

        // assertEq(
        //     pool.getShellBalanceOf(shell2, address(TEST2)),
        //     29925187032418952618454
        // );

    }

}