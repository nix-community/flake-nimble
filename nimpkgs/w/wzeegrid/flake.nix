{
  description = ''Grid plugin for wNim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."wZeeGrid-master".type = "github";
  inputs."wZeeGrid-master".owner = "riinr";
  inputs."wZeeGrid-master".repo = "flake-nimble";
  inputs."wZeeGrid-master".ref = "flake-pinning";
  inputs."wZeeGrid-master".dir = "nimpkgs/w/wZeeGrid/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}