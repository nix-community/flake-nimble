{
  description = ''Jenkins Hasher producing 32 bit digests'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."jhash-master".type = "github";
  inputs."jhash-master".owner = "riinr";
  inputs."jhash-master".repo = "flake-nimble";
  inputs."jhash-master".ref = "flake-pinning";
  inputs."jhash-master".dir = "nimpkgs/j/jhash/master";

    inputs."jhash-v0_1_0".type = "github";
  inputs."jhash-v0_1_0".owner = "riinr";
  inputs."jhash-v0_1_0".repo = "flake-nimble";
  inputs."jhash-v0_1_0".ref = "flake-pinning";
  inputs."jhash-v0_1_0".dir = "nimpkgs/j/jhash/v0_1_0";

    inputs."jhash-v0_1_1".type = "github";
  inputs."jhash-v0_1_1".owner = "riinr";
  inputs."jhash-v0_1_1".repo = "flake-nimble";
  inputs."jhash-v0_1_1".ref = "flake-pinning";
  inputs."jhash-v0_1_1".dir = "nimpkgs/j/jhash/v0_1_1";

    inputs."jhash-v0_1_2".type = "github";
  inputs."jhash-v0_1_2".owner = "riinr";
  inputs."jhash-v0_1_2".repo = "flake-nimble";
  inputs."jhash-v0_1_2".ref = "flake-pinning";
  inputs."jhash-v0_1_2".dir = "nimpkgs/j/jhash/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}