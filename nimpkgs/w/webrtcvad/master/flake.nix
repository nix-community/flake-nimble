{
  description = ''Nim bindings for the WEBRTC VAD(voice actitvity Detection)'';
  inputs.src-webrtcvad-master.flake = false;
  inputs.src-webrtcvad-master.type = "gitlab";
  inputs.src-webrtcvad-master.owner = "eagledot";
  inputs.src-webrtcvad-master.repo = "nim-webrtcvad";
  inputs.src-webrtcvad-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-webrtcvad-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webrtcvad-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webrtcvad-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}