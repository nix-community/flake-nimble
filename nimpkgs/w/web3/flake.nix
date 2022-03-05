{
  description = ''Ethereum Web3 API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."web3-master".type = "github";
  inputs."web3-master".owner = "riinr";
  inputs."web3-master".repo = "flake-nimble";
  inputs."web3-master".ref = "flake-pinning";
  inputs."web3-master".dir = "nimpkgs/w/web3/master";
  inputs."web3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."web3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}