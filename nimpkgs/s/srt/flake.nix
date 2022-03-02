{
  description = ''Nim module for parsing SRT (SubRip) subtitle files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."srt-master".type = "github";
  inputs."srt-master".owner = "riinr";
  inputs."srt-master".repo = "flake-nimble";
  inputs."srt-master".ref = "flake-pinning";
  inputs."srt-master".dir = "nimpkgs/s/srt/master";
  inputs."srt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."srt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}