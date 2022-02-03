{
  description = ''View and set the metadata for audio files'';
  inputs.src-meta-master.flake = false;
  inputs.src-meta-master.type = "github";
  inputs.src-meta-master.owner = "RainbowAsteroids";
  inputs.src-meta-master.repo = "meta";
  inputs.src-meta-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-meta-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-meta-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-meta-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}