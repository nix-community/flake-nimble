{
  description = ''Circular buffer implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."RingBuffer-master".type = "github";
  inputs."RingBuffer-master".owner = "riinr";
  inputs."RingBuffer-master".repo = "flake-nimble";
  inputs."RingBuffer-master".ref = "flake-pinning";
  inputs."RingBuffer-master".dir = "nimpkgs/r/RingBuffer/master";

    inputs."RingBuffer-v0_1".type = "github";
  inputs."RingBuffer-v0_1".owner = "riinr";
  inputs."RingBuffer-v0_1".repo = "flake-nimble";
  inputs."RingBuffer-v0_1".ref = "flake-pinning";
  inputs."RingBuffer-v0_1".dir = "nimpkgs/r/RingBuffer/v0_1";

    inputs."RingBuffer-v0_1_1".type = "github";
  inputs."RingBuffer-v0_1_1".owner = "riinr";
  inputs."RingBuffer-v0_1_1".repo = "flake-nimble";
  inputs."RingBuffer-v0_1_1".ref = "flake-pinning";
  inputs."RingBuffer-v0_1_1".dir = "nimpkgs/r/RingBuffer/v0_1_1";

    inputs."RingBuffer-v0_1_2".type = "github";
  inputs."RingBuffer-v0_1_2".owner = "riinr";
  inputs."RingBuffer-v0_1_2".repo = "flake-nimble";
  inputs."RingBuffer-v0_1_2".ref = "flake-pinning";
  inputs."RingBuffer-v0_1_2".dir = "nimpkgs/r/RingBuffer/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}