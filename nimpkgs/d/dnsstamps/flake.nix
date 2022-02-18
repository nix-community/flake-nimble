{
  description = ''An implementation of DNS server stamps in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dnsstamps-master".type = "github";
  inputs."dnsstamps-master".owner = "riinr";
  inputs."dnsstamps-master".repo = "flake-nimble";
  inputs."dnsstamps-master".ref = "flake-pinning";
  inputs."dnsstamps-master".dir = "nimpkgs/d/dnsstamps/master";

    inputs."dnsstamps-0_1_0".type = "github";
  inputs."dnsstamps-0_1_0".owner = "riinr";
  inputs."dnsstamps-0_1_0".repo = "flake-nimble";
  inputs."dnsstamps-0_1_0".ref = "flake-pinning";
  inputs."dnsstamps-0_1_0".dir = "nimpkgs/d/dnsstamps/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}