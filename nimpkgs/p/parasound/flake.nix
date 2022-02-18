{
  description = ''A library for playing audio files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."parasound-master".type = "github";
  inputs."parasound-master".owner = "riinr";
  inputs."parasound-master".repo = "flake-nimble";
  inputs."parasound-master".ref = "flake-pinning";
  inputs."parasound-master".dir = "nimpkgs/p/parasound/master";

    inputs."parasound-0_1_0".type = "github";
  inputs."parasound-0_1_0".owner = "riinr";
  inputs."parasound-0_1_0".repo = "flake-nimble";
  inputs."parasound-0_1_0".ref = "flake-pinning";
  inputs."parasound-0_1_0".dir = "nimpkgs/p/parasound/0_1_0";

    inputs."parasound-0_2_0".type = "github";
  inputs."parasound-0_2_0".owner = "riinr";
  inputs."parasound-0_2_0".repo = "flake-nimble";
  inputs."parasound-0_2_0".ref = "flake-pinning";
  inputs."parasound-0_2_0".dir = "nimpkgs/p/parasound/0_2_0";

    inputs."parasound-1_0_0".type = "github";
  inputs."parasound-1_0_0".owner = "riinr";
  inputs."parasound-1_0_0".repo = "flake-nimble";
  inputs."parasound-1_0_0".ref = "flake-pinning";
  inputs."parasound-1_0_0".dir = "nimpkgs/p/parasound/1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}