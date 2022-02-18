{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ffmpeg-master".type = "github";
  inputs."ffmpeg-master".owner = "riinr";
  inputs."ffmpeg-master".repo = "flake-nimble";
  inputs."ffmpeg-master".ref = "flake-pinning";
  inputs."ffmpeg-master".dir = "nimpkgs/f/ffmpeg/master";

    inputs."ffmpeg-0_3_11".type = "github";
  inputs."ffmpeg-0_3_11".owner = "riinr";
  inputs."ffmpeg-0_3_11".repo = "flake-nimble";
  inputs."ffmpeg-0_3_11".ref = "flake-pinning";
  inputs."ffmpeg-0_3_11".dir = "nimpkgs/f/ffmpeg/0_3_11";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}