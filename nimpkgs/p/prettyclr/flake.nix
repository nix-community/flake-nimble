{
  description = ''Small library for working with colors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."prettyclr-main".type = "github";
  inputs."prettyclr-main".owner = "riinr";
  inputs."prettyclr-main".repo = "flake-nimble";
  inputs."prettyclr-main".ref = "flake-pinning";
  inputs."prettyclr-main".dir = "nimpkgs/p/prettyclr/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}