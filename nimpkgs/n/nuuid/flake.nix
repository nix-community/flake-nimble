{
  description = ''A Nim source only UUID generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nuuid-master".type = "github";
  inputs."nuuid-master".owner = "riinr";
  inputs."nuuid-master".repo = "flake-nimble";
  inputs."nuuid-master".ref = "flake-pinning";
  inputs."nuuid-master".dir = "nimpkgs/n/nuuid/master";
  inputs."nuuid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nuuid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}