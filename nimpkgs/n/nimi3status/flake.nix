{
  description = ''Lightweight i3 status bar.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimi3status-master".type = "github";
  inputs."nimi3status-master".owner = "riinr";
  inputs."nimi3status-master".repo = "flake-nimble";
  inputs."nimi3status-master".ref = "flake-pinning";
  inputs."nimi3status-master".dir = "nimpkgs/n/nimi3status/master";
  inputs."nimi3status-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimi3status-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimi3status-0_2_0".type = "github";
  inputs."nimi3status-0_2_0".owner = "riinr";
  inputs."nimi3status-0_2_0".repo = "flake-nimble";
  inputs."nimi3status-0_2_0".ref = "flake-pinning";
  inputs."nimi3status-0_2_0".dir = "nimpkgs/n/nimi3status/0_2_0";
  inputs."nimi3status-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimi3status-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}