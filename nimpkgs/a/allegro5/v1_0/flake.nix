{
  description = ''Wrapper for Allegro version 5.X'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-allegro5-v1_0.flake = false;
  inputs.src-allegro5-v1_0.type = "github";
  inputs.src-allegro5-v1_0.owner = "fowlmouth";
  inputs.src-allegro5-v1_0.repo = "allegro5";
  inputs.src-allegro5-v1_0.ref = "refs/tags/v1.0";
  inputs.src-allegro5-v1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-allegro5-v1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allegro5-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-allegro5-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}