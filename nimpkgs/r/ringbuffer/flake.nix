{
  description = ''Circular buffer implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ringbuffer-master".type = "github";
  inputs."ringbuffer-master".owner = "riinr";
  inputs."ringbuffer-master".repo = "flake-nimble";
  inputs."ringbuffer-master".ref = "flake-pinning";
  inputs."ringbuffer-master".dir = "nimpkgs/r/ringbuffer/master";

    inputs."ringbuffer-v0_1".type = "github";
  inputs."ringbuffer-v0_1".owner = "riinr";
  inputs."ringbuffer-v0_1".repo = "flake-nimble";
  inputs."ringbuffer-v0_1".ref = "flake-pinning";
  inputs."ringbuffer-v0_1".dir = "nimpkgs/r/ringbuffer/v0_1";

    inputs."ringbuffer-v0_1_1".type = "github";
  inputs."ringbuffer-v0_1_1".owner = "riinr";
  inputs."ringbuffer-v0_1_1".repo = "flake-nimble";
  inputs."ringbuffer-v0_1_1".ref = "flake-pinning";
  inputs."ringbuffer-v0_1_1".dir = "nimpkgs/r/ringbuffer/v0_1_1";

    inputs."ringbuffer-v0_1_2".type = "github";
  inputs."ringbuffer-v0_1_2".owner = "riinr";
  inputs."ringbuffer-v0_1_2".repo = "flake-nimble";
  inputs."ringbuffer-v0_1_2".ref = "flake-pinning";
  inputs."ringbuffer-v0_1_2".dir = "nimpkgs/r/ringbuffer/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
