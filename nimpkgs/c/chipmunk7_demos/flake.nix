{
  description = ''Chipmunk7 demos for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."chipmunk7_demos-master".type = "github";
  inputs."chipmunk7_demos-master".owner = "riinr";
  inputs."chipmunk7_demos-master".repo = "flake-nimble";
  inputs."chipmunk7_demos-master".ref = "flake-pinning";
  inputs."chipmunk7_demos-master".dir = "nimpkgs/c/chipmunk7_demos/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}