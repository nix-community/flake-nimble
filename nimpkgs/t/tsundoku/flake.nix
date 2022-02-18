{
  description = ''Simple and lightweight OPDS ebook server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."tsundoku-master".type = "github";
  inputs."tsundoku-master".owner = "riinr";
  inputs."tsundoku-master".repo = "flake-nimble";
  inputs."tsundoku-master".ref = "flake-pinning";
  inputs."tsundoku-master".dir = "nimpkgs/t/tsundoku/master";

    inputs."tsundoku-v0_1_0".type = "github";
  inputs."tsundoku-v0_1_0".owner = "riinr";
  inputs."tsundoku-v0_1_0".repo = "flake-nimble";
  inputs."tsundoku-v0_1_0".ref = "flake-pinning";
  inputs."tsundoku-v0_1_0".dir = "nimpkgs/t/tsundoku/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}