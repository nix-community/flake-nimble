{
  description = ''Soundfonts for paramidi'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."paramidi_soundfonts-master".type = "github";
  inputs."paramidi_soundfonts-master".owner = "riinr";
  inputs."paramidi_soundfonts-master".repo = "flake-nimble";
  inputs."paramidi_soundfonts-master".ref = "flake-pinning";
  inputs."paramidi_soundfonts-master".dir = "nimpkgs/p/paramidi_soundfonts/master";
  inputs."paramidi_soundfonts-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."paramidi_soundfonts-0_1_0".type = "github";
  inputs."paramidi_soundfonts-0_1_0".owner = "riinr";
  inputs."paramidi_soundfonts-0_1_0".repo = "flake-nimble";
  inputs."paramidi_soundfonts-0_1_0".ref = "flake-pinning";
  inputs."paramidi_soundfonts-0_1_0".dir = "nimpkgs/p/paramidi_soundfonts/0_1_0";
  inputs."paramidi_soundfonts-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."paramidi_soundfonts-0_2_0".type = "github";
  inputs."paramidi_soundfonts-0_2_0".owner = "riinr";
  inputs."paramidi_soundfonts-0_2_0".repo = "flake-nimble";
  inputs."paramidi_soundfonts-0_2_0".ref = "flake-pinning";
  inputs."paramidi_soundfonts-0_2_0".dir = "nimpkgs/p/paramidi_soundfonts/0_2_0";
  inputs."paramidi_soundfonts-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}