{
  description = ''A small package to create lindenmayer-systems or l-systems.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."Echon-master".type = "github";
  inputs."Echon-master".owner = "riinr";
  inputs."Echon-master".repo = "flake-nimble";
  inputs."Echon-master".ref = "flake-pinning";
  inputs."Echon-master".dir = "nimpkgs/e/Echon/master";

    inputs."Echon-1_0_0".type = "github";
  inputs."Echon-1_0_0".owner = "riinr";
  inputs."Echon-1_0_0".repo = "flake-nimble";
  inputs."Echon-1_0_0".ref = "flake-pinning";
  inputs."Echon-1_0_0".dir = "nimpkgs/e/Echon/1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}