{
  description = ''Text parsing utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."hparse-master".type = "github";
  inputs."hparse-master".owner = "riinr";
  inputs."hparse-master".repo = "flake-nimble";
  inputs."hparse-master".ref = "flake-pinning";
  inputs."hparse-master".dir = "nimpkgs/h/hparse/master";

    inputs."hparse-v0_2_4".type = "github";
  inputs."hparse-v0_2_4".owner = "riinr";
  inputs."hparse-v0_2_4".repo = "flake-nimble";
  inputs."hparse-v0_2_4".ref = "flake-pinning";
  inputs."hparse-v0_2_4".dir = "nimpkgs/h/hparse/v0_2_4";

    inputs."hparse-v0_2_5".type = "github";
  inputs."hparse-v0_2_5".owner = "riinr";
  inputs."hparse-v0_2_5".repo = "flake-nimble";
  inputs."hparse-v0_2_5".ref = "flake-pinning";
  inputs."hparse-v0_2_5".dir = "nimpkgs/h/hparse/v0_2_5";

    inputs."hparse-v0_2_6".type = "github";
  inputs."hparse-v0_2_6".owner = "riinr";
  inputs."hparse-v0_2_6".repo = "flake-nimble";
  inputs."hparse-v0_2_6".ref = "flake-pinning";
  inputs."hparse-v0_2_6".dir = "nimpkgs/h/hparse/v0_2_6";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}