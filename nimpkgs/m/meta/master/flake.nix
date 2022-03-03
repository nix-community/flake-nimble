{
  description = ''View and set the metadata for audio files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-meta-master.flake = false;
  inputs.src-meta-master.type = "github";
  inputs.src-meta-master.owner = "RainbowAsteroids";
  inputs.src-meta-master.repo = "meta";
  inputs.src-meta-master.ref = "refs/heads/master";
  inputs.src-meta-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-meta-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-meta-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-meta-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}