{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
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


    inputs."ffmpeg-0_4_2".type = "github";
  inputs."ffmpeg-0_4_2".owner = "riinr";
  inputs."ffmpeg-0_4_2".repo = "flake-nimble";
  inputs."ffmpeg-0_4_2".ref = "flake-pinning";
  inputs."ffmpeg-0_4_2".dir = "nimpkgs/f/ffmpeg/0_4_2";
  inputs."ffmpeg-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ffmpeg-0_5_0".type = "github";
  inputs."ffmpeg-0_5_0".owner = "riinr";
  inputs."ffmpeg-0_5_0".repo = "flake-nimble";
  inputs."ffmpeg-0_5_0".ref = "flake-pinning";
  inputs."ffmpeg-0_5_0".dir = "nimpkgs/f/ffmpeg/0_5_0";
  inputs."ffmpeg-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}