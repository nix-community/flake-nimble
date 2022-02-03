{
  description = ''Wrapper for Allegro version 5.X'';
  inputs.src-allegro5-master.flake = false;
  inputs.src-allegro5-master.type = "github";
  inputs.src-allegro5-master.owner = "fowlmouth";
  inputs.src-allegro5-master.repo = "allegro5";
  inputs.src-allegro5-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-allegro5-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allegro5-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-allegro5-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}