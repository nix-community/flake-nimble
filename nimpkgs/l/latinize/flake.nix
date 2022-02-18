{
  description = ''Convert accents (diacritics) from strings to latin characters.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."latinize-master".type = "github";
  inputs."latinize-master".owner = "riinr";
  inputs."latinize-master".repo = "flake-nimble";
  inputs."latinize-master".ref = "flake-pinning";
  inputs."latinize-master".dir = "nimpkgs/l/latinize/master";

    inputs."latinize-v0_1".type = "github";
  inputs."latinize-v0_1".owner = "riinr";
  inputs."latinize-v0_1".repo = "flake-nimble";
  inputs."latinize-v0_1".ref = "flake-pinning";
  inputs."latinize-v0_1".dir = "nimpkgs/l/latinize/v0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}