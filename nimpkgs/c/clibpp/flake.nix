{
  description = ''Easy way to 'Mock' C++ interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."clibpp-master".type = "github";
  inputs."clibpp-master".owner = "riinr";
  inputs."clibpp-master".repo = "flake-nimble";
  inputs."clibpp-master".ref = "flake-pinning";
  inputs."clibpp-master".dir = "nimpkgs/c/clibpp/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}