pragma solidity ^0.8.0;

struct FenwickTree
{
	uint[] data;
}

library FenwickTreeImpl
{

function create(FenwickTree memory t, uint n) pure internal {
	t.data = new uint[](n + 1);
}

/// @return `n`'s least significat bit.
function LSOne(uint n) pure internal returns (uint) {
	return n & uint((-int(n)));
}

/// @return RQS(1, r).
function rangeSumQuery(FenwickTree memory t, uint r) pure internal returns (uint) {
	uint sum = 0;
	for(; r > 0; r -= LSOne(r))
		sum += t.data[r];
	return sum;
}

/// @return RQS(l, r).
function rangeSumQuery(FenwickTree memory t, uint l, uint r) pure internal returns (uint) {
	return rangeSumQuery(t, r) - (l == 1 ? 0 : rangeSumQuery(t, l - 1));
}

function update(FenwickTree memory t, uint k, uint x) pure internal {
	for(; k < t.data.length; k += LSOne(k))
		t.data[k] += x;
}

}
