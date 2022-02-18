{
  description = ''BGFX wrapper for the nim programming language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bgfx-master".type = "github";
  inputs."bgfx-master".owner = "riinr";
  inputs."bgfx-master".repo = "flake-nimble";
  inputs."bgfx-master".ref = "flake-pinning";
  inputs."bgfx-master".dir = "nimpkgs/b/bgfx/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}