{
  description = ''Nim library to get/set a hostname'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hostname-main".type = "github";
  inputs."hostname-main".owner = "riinr";
  inputs."hostname-main".repo = "flake-nimble";
  inputs."hostname-main".ref = "flake-pinning";
  inputs."hostname-main".dir = "nimpkgs/h/hostname/main";
  inputs."hostname-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hostname-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}