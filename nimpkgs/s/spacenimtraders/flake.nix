{
  description = ''A new awesome nimble package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spacenimtraders-master".type = "github";
  inputs."spacenimtraders-master".owner = "riinr";
  inputs."spacenimtraders-master".repo = "flake-nimble";
  inputs."spacenimtraders-master".ref = "flake-pinning";
  inputs."spacenimtraders-master".dir = "nimpkgs/s/spacenimtraders/master";

    inputs."spacenimtraders-0_2_0".type = "github";
  inputs."spacenimtraders-0_2_0".owner = "riinr";
  inputs."spacenimtraders-0_2_0".repo = "flake-nimble";
  inputs."spacenimtraders-0_2_0".ref = "flake-pinning";
  inputs."spacenimtraders-0_2_0".dir = "nimpkgs/s/spacenimtraders/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}