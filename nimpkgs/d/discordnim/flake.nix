{
  description = ''Discord library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."discordnim-develop".type = "github";
  inputs."discordnim-develop".owner = "riinr";
  inputs."discordnim-develop".repo = "flake-nimble";
  inputs."discordnim-develop".ref = "flake-pinning";
  inputs."discordnim-develop".dir = "nimpkgs/d/discordnim/develop";

    inputs."discordnim-master".type = "github";
  inputs."discordnim-master".owner = "riinr";
  inputs."discordnim-master".repo = "flake-nimble";
  inputs."discordnim-master".ref = "flake-pinning";
  inputs."discordnim-master".dir = "nimpkgs/d/discordnim/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}