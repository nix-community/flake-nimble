{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ffmpeg-0_5_0.flake = false;
  inputs.src-ffmpeg-0_5_0.type = "github";
  inputs.src-ffmpeg-0_5_0.owner = "momeemt";
  inputs.src-ffmpeg-0_5_0.repo = "ffmpeg.nim";
  inputs.src-ffmpeg-0_5_0.ref = "refs/tags/0.5.0";
  inputs.src-ffmpeg-0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ffmpeg-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ffmpeg-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ffmpeg-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}