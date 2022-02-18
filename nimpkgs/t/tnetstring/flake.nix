{
  description = ''Parsing and serializing for the TNetstring format.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."tnetstring-master".type = "github";
  inputs."tnetstring-master".owner = "riinr";
  inputs."tnetstring-master".repo = "flake-nimble";
  inputs."tnetstring-master".ref = "flake-pinning";
  inputs."tnetstring-master".dir = "nimpkgs/t/tnetstring/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}