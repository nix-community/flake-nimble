{
  description = ''Library for attaching files to emails.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."mime-master".type = "github";
  inputs."mime-master".owner = "riinr";
  inputs."mime-master".repo = "flake-nimble";
  inputs."mime-master".ref = "flake-pinning";
  inputs."mime-master".dir = "nimpkgs/m/mime/master";

    inputs."mime-v0_0_3".type = "github";
  inputs."mime-v0_0_3".owner = "riinr";
  inputs."mime-v0_0_3".repo = "flake-nimble";
  inputs."mime-v0_0_3".ref = "flake-pinning";
  inputs."mime-v0_0_3".dir = "nimpkgs/m/mime/v0_0_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}