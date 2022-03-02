{
  description = ''A Nim implementation of Ethash, the ethereum proof-of-work hashing function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ethash-master".type = "github";
  inputs."ethash-master".owner = "riinr";
  inputs."ethash-master".repo = "flake-nimble";
  inputs."ethash-master".ref = "flake-pinning";
  inputs."ethash-master".dir = "nimpkgs/e/ethash/master";
  inputs."ethash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ethash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}