{
  description = ''A small wrapper around PortAudio for cross-platform audio IO.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nordaudio-main".type = "github";
  inputs."nordaudio-main".owner = "riinr";
  inputs."nordaudio-main".repo = "flake-nimble";
  inputs."nordaudio-main".ref = "flake-pinning";
  inputs."nordaudio-main".dir = "nimpkgs/n/nordaudio/main";
  inputs."nordaudio-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordaudio-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}