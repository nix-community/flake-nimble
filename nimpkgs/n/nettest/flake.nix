{
  description = ''Connection Test for Nim Web Applications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nettest-main".type = "github";
  inputs."nettest-main".owner = "riinr";
  inputs."nettest-main".repo = "flake-nimble";
  inputs."nettest-main".ref = "flake-pinning";
  inputs."nettest-main".dir = "nimpkgs/n/nettest/main";
  inputs."nettest-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nettest-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}