{
  description = ''csvql.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."csvql-master".type = "github";
  inputs."csvql-master".owner = "riinr";
  inputs."csvql-master".repo = "flake-nimble";
  inputs."csvql-master".ref = "flake-pinning";
  inputs."csvql-master".dir = "nimpkgs/c/csvql/master";

    inputs."csvql-1_0".type = "github";
  inputs."csvql-1_0".owner = "riinr";
  inputs."csvql-1_0".repo = "flake-nimble";
  inputs."csvql-1_0".ref = "flake-pinning";
  inputs."csvql-1_0".dir = "nimpkgs/c/csvql/1_0";

    inputs."csvql-2_0_1".type = "github";
  inputs."csvql-2_0_1".owner = "riinr";
  inputs."csvql-2_0_1".repo = "flake-nimble";
  inputs."csvql-2_0_1".ref = "flake-pinning";
  inputs."csvql-2_0_1".dir = "nimpkgs/c/csvql/2_0_1";

    inputs."csvql-2_0v".type = "github";
  inputs."csvql-2_0v".owner = "riinr";
  inputs."csvql-2_0v".repo = "flake-nimble";
  inputs."csvql-2_0v".ref = "flake-pinning";
  inputs."csvql-2_0v".dir = "nimpkgs/c/csvql/2_0v";

    inputs."csvql-3_0".type = "github";
  inputs."csvql-3_0".owner = "riinr";
  inputs."csvql-3_0".repo = "flake-nimble";
  inputs."csvql-3_0".ref = "flake-pinning";
  inputs."csvql-3_0".dir = "nimpkgs/c/csvql/3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}