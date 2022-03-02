{
  description = ''New atomics, thread primitives, channels and atomic refcounting for --gc:arc/orc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."threading-master".type = "github";
  inputs."threading-master".owner = "riinr";
  inputs."threading-master".repo = "flake-nimble";
  inputs."threading-master".ref = "flake-pinning";
  inputs."threading-master".dir = "nimpkgs/t/threading/master";
  inputs."threading-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threading-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}