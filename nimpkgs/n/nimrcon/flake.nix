{
  description = ''Simple RCON client in Nim lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimrcon-master".type = "github";
  inputs."nimrcon-master".owner = "riinr";
  inputs."nimrcon-master".repo = "flake-nimble";
  inputs."nimrcon-master".ref = "flake-pinning";
  inputs."nimrcon-master".dir = "nimpkgs/n/nimrcon/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}