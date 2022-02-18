{
  description = ''A partially compile and runtime evaluated object, inspired from .net object'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nobject-main".type = "github";
  inputs."nobject-main".owner = "riinr";
  inputs."nobject-main".repo = "flake-nimble";
  inputs."nobject-main".ref = "flake-pinning";
  inputs."nobject-main".dir = "nimpkgs/n/nobject/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}