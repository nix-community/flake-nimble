{
  description = ''Nim Semi-Auto Bug Report Tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimbug-master".type = "github";
  inputs."nimbug-master".owner = "riinr";
  inputs."nimbug-master".repo = "flake-nimble";
  inputs."nimbug-master".ref = "flake-pinning";
  inputs."nimbug-master".dir = "nimpkgs/n/nimbug/master";

    inputs."nimbug-0_1_1".type = "github";
  inputs."nimbug-0_1_1".owner = "riinr";
  inputs."nimbug-0_1_1".repo = "flake-nimble";
  inputs."nimbug-0_1_1".ref = "flake-pinning";
  inputs."nimbug-0_1_1".dir = "nimpkgs/n/nimbug/0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}