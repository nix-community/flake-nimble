{
  description = ''Wrapper for AutoIt v3.3.14.2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."autonim-main".type = "github";
  inputs."autonim-main".owner = "riinr";
  inputs."autonim-main".repo = "flake-nimble";
  inputs."autonim-main".ref = "flake-pinning";
  inputs."autonim-main".dir = "nimpkgs/a/autonim/main";
  inputs."autonim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autonim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}