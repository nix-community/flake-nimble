{
  description = ''libmagic for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."magic-master".type = "github";
  inputs."magic-master".owner = "riinr";
  inputs."magic-master".repo = "flake-nimble";
  inputs."magic-master".ref = "flake-pinning";
  inputs."magic-master".dir = "nimpkgs/m/magic/master";
  inputs."magic-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."magic-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}