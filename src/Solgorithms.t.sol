pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./Solgorithms.sol";

contract SolgorithmsTest is DSTest {
    Solgorithms solgorithms;

    function setUp() public {
        solgorithms = new Solgorithms();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
