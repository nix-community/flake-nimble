{
  description = ''Provides a macro to curry function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nim_curry-master".type = "github";
  inputs."nim_curry-master".owner = "riinr";
  inputs."nim_curry-master".repo = "flake-nimble";
  inputs."nim_curry-master".ref = "flake-pinning";
  inputs."nim_curry-master".dir = "nimpkgs/n/nim_curry/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}