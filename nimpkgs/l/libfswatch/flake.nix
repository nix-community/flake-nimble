{
  description = ''Nim binding to libfswatch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libfswatch-master".type = "github";
  inputs."libfswatch-master".owner = "riinr";
  inputs."libfswatch-master".repo = "flake-nimble";
  inputs."libfswatch-master".ref = "flake-pinning";
  inputs."libfswatch-master".dir = "nimpkgs/l/libfswatch/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}