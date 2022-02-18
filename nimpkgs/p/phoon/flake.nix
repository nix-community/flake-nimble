{
  description = ''A web framework inspired by ExpressJS 🐇⚡'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."phoon-master".type = "github";
  inputs."phoon-master".owner = "riinr";
  inputs."phoon-master".repo = "flake-nimble";
  inputs."phoon-master".ref = "flake-pinning";
  inputs."phoon-master".dir = "nimpkgs/p/phoon/master";

    inputs."phoon-v0_1_0".type = "github";
  inputs."phoon-v0_1_0".owner = "riinr";
  inputs."phoon-v0_1_0".repo = "flake-nimble";
  inputs."phoon-v0_1_0".ref = "flake-pinning";
  inputs."phoon-v0_1_0".dir = "nimpkgs/p/phoon/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}