{
  description = ''Library to parse ANSI escape codes'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ansiparse-master".type = "github";
  inputs."ansiparse-master".owner = "riinr";
  inputs."ansiparse-master".repo = "flake-nimble";
  inputs."ansiparse-master".ref = "flake-pinning";
  inputs."ansiparse-master".dir = "nimpkgs/a/ansiparse/master";

    inputs."ansiparse-v0_2_0".type = "github";
  inputs."ansiparse-v0_2_0".owner = "riinr";
  inputs."ansiparse-v0_2_0".repo = "flake-nimble";
  inputs."ansiparse-v0_2_0".ref = "flake-pinning";
  inputs."ansiparse-v0_2_0".dir = "nimpkgs/a/ansiparse/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}