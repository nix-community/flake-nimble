{
  description = ''Nico game engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nico-main".type = "github";
  inputs."nico-main".owner = "riinr";
  inputs."nico-main".repo = "flake-nimble";
  inputs."nico-main".ref = "flake-pinning";
  inputs."nico-main".dir = "nimpkgs/n/nico/main";
  inputs."nico-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nico-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}