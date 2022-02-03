{
  description = ''An amateur radio tool to get you a ballpark estimate of where a given Maidenhead grid square is.'';
  inputs.src-ballpark-main.flake = false;
  inputs.src-ballpark-main.type = "github";
  inputs.src-ballpark-main.owner = "Mihara";
  inputs.src-ballpark-main.repo = "ballpark";
  inputs.src-ballpark-main.ref = "refs/heads/main";
  
  
  inputs."fsnotify".url = "path:../../../f/fsnotify";
  inputs."fsnotify".type = "github";
  inputs."fsnotify".owner = "riinr";
  inputs."fsnotify".repo = "flake-nimble";
  inputs."fsnotify".ref = "flake-pinning";
  inputs."fsnotify".dir = "nimpkgs/f/fsnotify";

  outputs = { self, nixpkgs, src-ballpark-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ballpark-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ballpark-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}