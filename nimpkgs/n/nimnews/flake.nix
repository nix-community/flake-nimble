{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimnews-master".type = "github";
  inputs."nimnews-master".owner = "riinr";
  inputs."nimnews-master".repo = "flake-nimble";
  inputs."nimnews-master".ref = "flake-pinning";
  inputs."nimnews-master".dir = "nimpkgs/n/nimnews/master";

    inputs."nimnews-latest-master".type = "github";
  inputs."nimnews-latest-master".owner = "riinr";
  inputs."nimnews-latest-master".repo = "flake-nimble";
  inputs."nimnews-latest-master".ref = "flake-pinning";
  inputs."nimnews-latest-master".dir = "nimpkgs/n/nimnews/latest-master";

    inputs."nimnews-v0_0_0".type = "github";
  inputs."nimnews-v0_0_0".owner = "riinr";
  inputs."nimnews-v0_0_0".repo = "flake-nimble";
  inputs."nimnews-v0_0_0".ref = "flake-pinning";
  inputs."nimnews-v0_0_0".dir = "nimpkgs/n/nimnews/v0_0_0";

    inputs."nimnews-v0_1_0".type = "github";
  inputs."nimnews-v0_1_0".owner = "riinr";
  inputs."nimnews-v0_1_0".repo = "flake-nimble";
  inputs."nimnews-v0_1_0".ref = "flake-pinning";
  inputs."nimnews-v0_1_0".dir = "nimpkgs/n/nimnews/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}