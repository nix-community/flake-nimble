{
  description = ''Wrapper for Allegro version 5.X'';
  inputs.src-allegro5-v1_0.flake = false;
  inputs.src-allegro5-v1_0.type = "github";
  inputs.src-allegro5-v1_0.owner = "fowlmouth";
  inputs.src-allegro5-v1_0.repo = "allegro5";
  inputs.src-allegro5-v1_0.ref = "refs/tags/v1.0";
  
  outputs = { self, nixpkgs, src-allegro5-v1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allegro5-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-allegro5-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}