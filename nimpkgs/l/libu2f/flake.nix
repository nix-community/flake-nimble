{
  description = ''A wrapper for libu2f, a library for FIDO/U2F'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libu2f-master".type = "github";
  inputs."libu2f-master".owner = "riinr";
  inputs."libu2f-master".repo = "flake-nimble";
  inputs."libu2f-master".ref = "flake-pinning";
  inputs."libu2f-master".dir = "nimpkgs/l/libu2f/master";

    inputs."libu2f-0_1_1".type = "github";
  inputs."libu2f-0_1_1".owner = "riinr";
  inputs."libu2f-0_1_1".repo = "flake-nimble";
  inputs."libu2f-0_1_1".ref = "flake-pinning";
  inputs."libu2f-0_1_1".dir = "nimpkgs/l/libu2f/0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}