{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ffmpeg-master.flake = false;
  inputs.src-ffmpeg-master.type = "github";
  inputs.src-ffmpeg-master.owner = "momeemt";
  inputs.src-ffmpeg-master.repo = "ffmpeg.nim";
  inputs.src-ffmpeg-master.ref = "refs/heads/master";
  inputs.src-ffmpeg-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ffmpeg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ffmpeg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ffmpeg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}