{
  description = ''Human friendly DateTime string representations, seconds to millenniums.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."datetime2human-master".type = "github";
  inputs."datetime2human-master".owner = "riinr";
  inputs."datetime2human-master".repo = "flake-nimble";
  inputs."datetime2human-master".ref = "flake-pinning";
  inputs."datetime2human-master".dir = "nimpkgs/d/datetime2human/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}