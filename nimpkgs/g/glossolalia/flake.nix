{
  description = ''A DSL for quickly writing parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."glossolalia-master".type = "github";
  inputs."glossolalia-master".owner = "riinr";
  inputs."glossolalia-master".repo = "flake-nimble";
  inputs."glossolalia-master".ref = "flake-pinning";
  inputs."glossolalia-master".dir = "nimpkgs/g/glossolalia/master";
  inputs."glossolalia-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glossolalia-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}