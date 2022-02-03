{
  description = ''Basic tweening library for Nim'';
  inputs.src-tweens-master.flake = false;
  inputs.src-tweens-master.type = "github";
  inputs.src-tweens-master.owner = "RainbowAsteroids";
  inputs.src-tweens-master.repo = "tweens";
  inputs.src-tweens-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tweens-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tweens-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tweens-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}