{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';
  inputs.src-ffmpeg-master.flake = false;
  inputs.src-ffmpeg-master.type = "github";
  inputs.src-ffmpeg-master.owner = "momeemt";
  inputs.src-ffmpeg-master.repo = "ffmpeg.nim";
  inputs.src-ffmpeg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ffmpeg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ffmpeg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ffmpeg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}