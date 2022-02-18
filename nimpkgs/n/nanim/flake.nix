{
  description = ''Create smooth GPU-accelerated animations that can be previewed live or rendered to videos.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nanim-main".type = "github";
  inputs."nanim-main".owner = "riinr";
  inputs."nanim-main".repo = "flake-nimble";
  inputs."nanim-main".ref = "flake-pinning";
  inputs."nanim-main".dir = "nimpkgs/n/nanim/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}