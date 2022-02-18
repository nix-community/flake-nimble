{
  description = ''An amateur radio tool to get you a ballpark estimate of where a given Maidenhead grid square is.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ballpark-main.flake = false;
  inputs.src-ballpark-main.type = "github";
  inputs.src-ballpark-main.owner = "Mihara";
  inputs.src-ballpark-main.repo = "ballpark";
  inputs.src-ballpark-main.ref = "refs/heads/main";
  
  
  inputs."fsnotify".type = "github";
  inputs."fsnotify".owner = "riinr";
  inputs."fsnotify".repo = "flake-nimble";
  inputs."fsnotify".ref = "flake-pinning";
  inputs."fsnotify".dir = "nimpkgs/f/fsnotify";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ballpark-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ballpark-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ballpark-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}