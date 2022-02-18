{
  description = ''Encoder/decoder for blurhash algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."blurhash-master".type = "github";
  inputs."blurhash-master".owner = "riinr";
  inputs."blurhash-master".repo = "flake-nimble";
  inputs."blurhash-master".ref = "flake-pinning";
  inputs."blurhash-master".dir = "nimpkgs/b/blurhash/master";

    inputs."blurhash-v0_1_0".type = "github";
  inputs."blurhash-v0_1_0".owner = "riinr";
  inputs."blurhash-v0_1_0".repo = "flake-nimble";
  inputs."blurhash-v0_1_0".ref = "flake-pinning";
  inputs."blurhash-v0_1_0".dir = "nimpkgs/b/blurhash/v0_1_0";

    inputs."blurhash-v0_2_0".type = "github";
  inputs."blurhash-v0_2_0".owner = "riinr";
  inputs."blurhash-v0_2_0".repo = "flake-nimble";
  inputs."blurhash-v0_2_0".ref = "flake-pinning";
  inputs."blurhash-v0_2_0".dir = "nimpkgs/b/blurhash/v0_2_0";

    inputs."blurhash-v0_2_1".type = "github";
  inputs."blurhash-v0_2_1".owner = "riinr";
  inputs."blurhash-v0_2_1".repo = "flake-nimble";
  inputs."blurhash-v0_2_1".ref = "flake-pinning";
  inputs."blurhash-v0_2_1".dir = "nimpkgs/b/blurhash/v0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}