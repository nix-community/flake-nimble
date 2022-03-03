{
  description = ''Basic tweening library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tweens-master.flake = false;
  inputs.src-tweens-master.type = "github";
  inputs.src-tweens-master.owner = "RainbowAsteroids";
  inputs.src-tweens-master.repo = "tweens";
  inputs.src-tweens-master.ref = "refs/heads/master";
  inputs.src-tweens-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tweens-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tweens-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tweens-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}