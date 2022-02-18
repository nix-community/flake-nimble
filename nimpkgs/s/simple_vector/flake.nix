{
  description = ''Simple vector library for nim-lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."simple_vector-master".type = "github";
  inputs."simple_vector-master".owner = "riinr";
  inputs."simple_vector-master".repo = "flake-nimble";
  inputs."simple_vector-master".ref = "flake-pinning";
  inputs."simple_vector-master".dir = "nimpkgs/s/simple_vector/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}