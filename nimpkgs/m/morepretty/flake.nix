{
  description = ''Morepretty - Does more than nimpretty.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."morepretty-master".type = "github";
  inputs."morepretty-master".owner = "riinr";
  inputs."morepretty-master".repo = "flake-nimble";
  inputs."morepretty-master".ref = "flake-pinning";
  inputs."morepretty-master".dir = "nimpkgs/m/morepretty/master";

    inputs."morepretty-0_1_0".type = "github";
  inputs."morepretty-0_1_0".owner = "riinr";
  inputs."morepretty-0_1_0".repo = "flake-nimble";
  inputs."morepretty-0_1_0".ref = "flake-pinning";
  inputs."morepretty-0_1_0".dir = "nimpkgs/m/morepretty/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}