{
  description = ''Library for converting sequences to strings. Also has PHP-inspired explode and implode procs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sequester-master".type = "github";
  inputs."sequester-master".owner = "riinr";
  inputs."sequester-master".repo = "flake-nimble";
  inputs."sequester-master".ref = "flake-pinning";
  inputs."sequester-master".dir = "nimpkgs/s/sequester/master";

    inputs."sequester-v0_1_0".type = "github";
  inputs."sequester-v0_1_0".owner = "riinr";
  inputs."sequester-v0_1_0".repo = "flake-nimble";
  inputs."sequester-v0_1_0".ref = "flake-pinning";
  inputs."sequester-v0_1_0".dir = "nimpkgs/s/sequester/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}