// // SPDX-License-Identifier: MIT

// pragma solidity ^0.8.19;

// import { Test, console } from "forge-std/Test.sol";
// import { StdInvariant } from "forge-std/StdInvariant.sol";
// import { DeployDSC } from "../../script/DeployDSC.s.sol";
// import { DSCEngine } from "../../src/DSCEngine.sol";
// import { DecentralizedStableCoin } from "../../src/DecentralizedStableCoin.sol";
// import { HelperConfig } from "../../script/HelperConfig.s.sol";
// import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// contract OpenInvariantTest is StdInvariant, Test {
//     DSCEngine dscEngine;
//     DecentralizedStableCoin dsc;
//     DeployDSC deployer;
//     HelperConfig helperConfig;
//     address weth;
//     address wbtc;

//     function setUp() external {
//         deployer = new DeployDSC();
//         (dsc, dscEngine, helperConfig) = deployer.run();
//         (,, weth, wbtc,) = helperConfig.activeNetworkConfig();
//         targetContract(address(dscEngine));
//     }

//     function invariant_protocolMustHaveMoreValueThatTotalSupplyDollars() public view {
//         uint256 totalSupply = dsc.totalSupply();
//         uint256 wethDeposted = IERC20(weth).balanceOf(address(dscEngine));
//         uint256 wbtcDeposited = IERC20(wbtc).balanceOf(address(dscEngine));

//         uint256 wethValue = dscEngine.getUsdValue(weth, wethDeposted);
//         uint256 wbtcValue = dscEngine.getUsdValue(wbtc, wbtcDeposited);

//         console.log("wethValue: %s", wethValue);
//         console.log("wbtcValue: %s", wbtcValue);

//         assert(wethValue + wbtcValue >= totalSupply);
//     }
// }
