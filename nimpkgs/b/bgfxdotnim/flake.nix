{
  description = ''bindings to bgfx c99 api'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bgfxdotnim-master".type = "github";
  inputs."bgfxdotnim-master".owner = "riinr";
  inputs."bgfxdotnim-master".repo = "flake-nimble";
  inputs."bgfxdotnim-master".ref = "flake-pinning";
  inputs."bgfxdotnim-master".dir = "nimpkgs/b/bgfxdotnim/master";
  inputs."bgfxdotnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bgfxdotnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}