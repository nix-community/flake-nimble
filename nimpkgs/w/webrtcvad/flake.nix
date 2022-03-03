{
  description = ''Nim bindings for the WEBRTC VAD(voice actitvity Detection)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."webrtcvad-master".type = "github";
  inputs."webrtcvad-master".owner = "riinr";
  inputs."webrtcvad-master".repo = "flake-nimble";
  inputs."webrtcvad-master".ref = "flake-pinning";
  inputs."webrtcvad-master".dir = "nimpkgs/w/webrtcvad/master";
  inputs."webrtcvad-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrtcvad-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}