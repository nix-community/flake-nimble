{
  description = ''RIFF file handling for Nim '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."riff-master".type = "github";
  inputs."riff-master".owner = "riinr";
  inputs."riff-master".repo = "flake-nimble";
  inputs."riff-master".ref = "flake-pinning";
  inputs."riff-master".dir = "nimpkgs/r/riff/master";

    inputs."riff-v0_2_0".type = "github";
  inputs."riff-v0_2_0".owner = "riinr";
  inputs."riff-v0_2_0".repo = "flake-nimble";
  inputs."riff-v0_2_0".ref = "flake-pinning";
  inputs."riff-v0_2_0".dir = "nimpkgs/r/riff/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}