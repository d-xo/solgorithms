pragma solidity ^0.8.0;

import {DSTest} from "ds-test/test.sol";
import "./FenwickTree.sol";

contract FenwickTreeTrest is DSTest {
	using FenwickTreeImpl for FenwickTree;

	function test_zeroes() public pure {
		FenwickTree memory t;
		t.create(8);
	}
}

