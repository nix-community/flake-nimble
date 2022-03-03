{
  description = ''A Mini Server Framework for Nim language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nio-master".type = "github";
  inputs."nio-master".owner = "riinr";
  inputs."nio-master".repo = "flake-nimble";
  inputs."nio-master".ref = "flake-pinning";
  inputs."nio-master".dir = "nimpkgs/n/nio/master";
  inputs."nio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}