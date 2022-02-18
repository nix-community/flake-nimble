{
  description = ''Iterator package aimed at more ergonomic and efficient iterators.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."slicerator-master".type = "github";
  inputs."slicerator-master".owner = "riinr";
  inputs."slicerator-master".repo = "flake-nimble";
  inputs."slicerator-master".ref = "flake-pinning";
  inputs."slicerator-master".dir = "nimpkgs/s/slicerator/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}