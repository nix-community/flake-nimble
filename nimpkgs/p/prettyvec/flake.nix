{
  description = ''Small library for working with vectors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."prettyvec-main".type = "github";
  inputs."prettyvec-main".owner = "riinr";
  inputs."prettyvec-main".repo = "flake-nimble";
  inputs."prettyvec-main".ref = "flake-pinning";
  inputs."prettyvec-main".dir = "nimpkgs/p/prettyvec/main";
  inputs."prettyvec-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prettyvec-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}