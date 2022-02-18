{
  description = ''Nim bindings for the WEBRTC VAD(voice actitvity Detection)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-webrtcvad-master.flake = false;
  inputs.src-webrtcvad-master.type = "gitlab";
  inputs.src-webrtcvad-master.owner = "eagledot";
  inputs.src-webrtcvad-master.repo = "nim-webrtcvad";
  inputs.src-webrtcvad-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webrtcvad-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webrtcvad-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webrtcvad-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}