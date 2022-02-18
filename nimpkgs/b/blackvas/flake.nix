{
  description = ''declarative UI framework for building Canvas'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."Blackvas-master".type = "github";
  inputs."Blackvas-master".owner = "riinr";
  inputs."Blackvas-master".repo = "flake-nimble";
  inputs."Blackvas-master".ref = "flake-pinning";
  inputs."Blackvas-master".dir = "nimpkgs/b/Blackvas/master";

    inputs."Blackvas-0_1_0".type = "github";
  inputs."Blackvas-0_1_0".owner = "riinr";
  inputs."Blackvas-0_1_0".repo = "flake-nimble";
  inputs."Blackvas-0_1_0".ref = "flake-pinning";
  inputs."Blackvas-0_1_0".dir = "nimpkgs/b/Blackvas/0_1_0";

    inputs."Blackvas-0_2_0".type = "github";
  inputs."Blackvas-0_2_0".owner = "riinr";
  inputs."Blackvas-0_2_0".repo = "flake-nimble";
  inputs."Blackvas-0_2_0".ref = "flake-pinning";
  inputs."Blackvas-0_2_0".dir = "nimpkgs/b/Blackvas/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}