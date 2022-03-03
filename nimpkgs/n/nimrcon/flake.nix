{
  description = ''Simple RCON client in Nim lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimrcon-master".type = "github";
  inputs."nimrcon-master".owner = "riinr";
  inputs."nimrcon-master".repo = "flake-nimble";
  inputs."nimrcon-master".ref = "flake-pinning";
  inputs."nimrcon-master".dir = "nimpkgs/n/nimrcon/master";
  inputs."nimrcon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrcon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}