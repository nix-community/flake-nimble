{
  description = ''Nim's function chaining and method cascading'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."chain-master".type = "github";
  inputs."chain-master".owner = "riinr";
  inputs."chain-master".repo = "flake-nimble";
  inputs."chain-master".ref = "flake-pinning";
  inputs."chain-master".dir = "nimpkgs/c/chain/master";
  inputs."chain-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chain-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}