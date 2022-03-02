{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ffmpeg-master".type = "github";
  inputs."ffmpeg-master".owner = "riinr";
  inputs."ffmpeg-master".repo = "flake-nimble";
  inputs."ffmpeg-master".ref = "flake-pinning";
  inputs."ffmpeg-master".dir = "nimpkgs/f/ffmpeg/master";
  inputs."ffmpeg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ffmpeg-0_3_11".type = "github";
  inputs."ffmpeg-0_3_11".owner = "riinr";
  inputs."ffmpeg-0_3_11".repo = "flake-nimble";
  inputs."ffmpeg-0_3_11".ref = "flake-pinning";
  inputs."ffmpeg-0_3_11".dir = "nimpkgs/f/ffmpeg/0_3_11";
  inputs."ffmpeg-0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}