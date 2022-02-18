{
  description = ''FastCGI Web Framework for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."fastkiss-master".type = "github";
  inputs."fastkiss-master".owner = "riinr";
  inputs."fastkiss-master".repo = "flake-nimble";
  inputs."fastkiss-master".ref = "flake-pinning";
  inputs."fastkiss-master".dir = "nimpkgs/f/FastKiss/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}