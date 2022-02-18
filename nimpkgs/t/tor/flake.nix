{
  description = ''Tor helper library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."tor-master".type = "github";
  inputs."tor-master".owner = "riinr";
  inputs."tor-master".repo = "flake-nimble";
  inputs."tor-master".ref = "flake-pinning";
  inputs."tor-master".dir = "nimpkgs/t/tor/master";

    inputs."tor-0_1_0".type = "github";
  inputs."tor-0_1_0".owner = "riinr";
  inputs."tor-0_1_0".repo = "flake-nimble";
  inputs."tor-0_1_0".ref = "flake-pinning";
  inputs."tor-0_1_0".dir = "nimpkgs/t/tor/0_1_0";

    inputs."tor-0_2_0".type = "github";
  inputs."tor-0_2_0".owner = "riinr";
  inputs."tor-0_2_0".repo = "flake-nimble";
  inputs."tor-0_2_0".ref = "flake-pinning";
  inputs."tor-0_2_0".dir = "nimpkgs/t/tor/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}