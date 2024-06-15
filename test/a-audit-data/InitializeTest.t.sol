// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {TestPool, PredyPool} from "../pool/Setup.t.sol";

contract InitializeTest is TestPool {
    address attacker = makeAddr("attacker");
    address maliciousContract = makeAddr("maliciousContract");

    function setUp() public override {
        predyPool = new PredyPool();
    }

    function test_initialize_front_run() public {
        vm.prank(attacker);
        predyPool.initialize(maliciousContract);

        assertEq(predyPool.operator(), attacker);
    }
}
