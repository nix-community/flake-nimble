{
  description = ''A small package to create lindenmayer-systems or l-systems.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."echon-master".type = "github";
  inputs."echon-master".owner = "riinr";
  inputs."echon-master".repo = "flake-nimble";
  inputs."echon-master".ref = "flake-pinning";
  inputs."echon-master".dir = "nimpkgs/e/echon/master";

    inputs."echon-1_0_0".type = "github";
  inputs."echon-1_0_0".owner = "riinr";
  inputs."echon-1_0_0".repo = "flake-nimble";
  inputs."echon-1_0_0".ref = "flake-pinning";
  inputs."echon-1_0_0".dir = "nimpkgs/e/echon/1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
