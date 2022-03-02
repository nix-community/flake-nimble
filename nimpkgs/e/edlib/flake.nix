{
  description = ''Nim wrapper for edlib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."edlib-main".type = "github";
  inputs."edlib-main".owner = "riinr";
  inputs."edlib-main".repo = "flake-nimble";
  inputs."edlib-main".ref = "flake-pinning";
  inputs."edlib-main".dir = "nimpkgs/e/edlib/main";
  inputs."edlib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edlib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}