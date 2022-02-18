{
  description = ''Dynamically resizable data structure optimized for fast iteration.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."faststack-master".type = "github";
  inputs."faststack-master".owner = "riinr";
  inputs."faststack-master".repo = "flake-nimble";
  inputs."faststack-master".ref = "flake-pinning";
  inputs."faststack-master".dir = "nimpkgs/f/faststack/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}