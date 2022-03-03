{
  description = ''preprod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."preprod-main".type = "github";
  inputs."preprod-main".owner = "riinr";
  inputs."preprod-main".repo = "flake-nimble";
  inputs."preprod-main".ref = "flake-pinning";
  inputs."preprod-main".dir = "nimpkgs/p/preprod/main";
  inputs."preprod-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preprod-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}