{
  description = ''Bindings for Chipmunk2D 6.x physics library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."chipmunk6-master".type = "github";
  inputs."chipmunk6-master".owner = "riinr";
  inputs."chipmunk6-master".repo = "flake-nimble";
  inputs."chipmunk6-master".ref = "flake-pinning";
  inputs."chipmunk6-master".dir = "nimpkgs/c/chipmunk6/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}