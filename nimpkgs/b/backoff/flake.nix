{
  description = ''Implementation of exponential backoff for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."backoff-master".type = "github";
  inputs."backoff-master".owner = "riinr";
  inputs."backoff-master".repo = "flake-nimble";
  inputs."backoff-master".ref = "flake-pinning";
  inputs."backoff-master".dir = "nimpkgs/b/backoff/master";

    inputs."backoff-v0_1".type = "github";
  inputs."backoff-v0_1".owner = "riinr";
  inputs."backoff-v0_1".repo = "flake-nimble";
  inputs."backoff-v0_1".ref = "flake-pinning";
  inputs."backoff-v0_1".dir = "nimpkgs/b/backoff/v0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}