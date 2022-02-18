{
  description = ''Soundfonts for paramidi'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."paramidi_soundfonts-master".type = "github";
  inputs."paramidi_soundfonts-master".owner = "riinr";
  inputs."paramidi_soundfonts-master".repo = "flake-nimble";
  inputs."paramidi_soundfonts-master".ref = "flake-pinning";
  inputs."paramidi_soundfonts-master".dir = "nimpkgs/p/paramidi_soundfonts/master";

    inputs."paramidi_soundfonts-0_1_0".type = "github";
  inputs."paramidi_soundfonts-0_1_0".owner = "riinr";
  inputs."paramidi_soundfonts-0_1_0".repo = "flake-nimble";
  inputs."paramidi_soundfonts-0_1_0".ref = "flake-pinning";
  inputs."paramidi_soundfonts-0_1_0".dir = "nimpkgs/p/paramidi_soundfonts/0_1_0";

    inputs."paramidi_soundfonts-0_2_0".type = "github";
  inputs."paramidi_soundfonts-0_2_0".owner = "riinr";
  inputs."paramidi_soundfonts-0_2_0".repo = "flake-nimble";
  inputs."paramidi_soundfonts-0_2_0".ref = "flake-pinning";
  inputs."paramidi_soundfonts-0_2_0".dir = "nimpkgs/p/paramidi_soundfonts/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}