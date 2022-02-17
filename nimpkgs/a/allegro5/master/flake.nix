{
  description = ''Wrapper for Allegro version 5.X'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-allegro5-master.flake = false;
  inputs.src-allegro5-master.type = "github";
  inputs.src-allegro5-master.owner = "fowlmouth";
  inputs.src-allegro5-master.repo = "allegro5";
  inputs.src-allegro5-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-allegro5-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allegro5-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-allegro5-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}