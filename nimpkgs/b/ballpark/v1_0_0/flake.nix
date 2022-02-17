{
  description = ''An amateur radio tool to get you a ballpark estimate of where a given Maidenhead grid square is.'';
  inputs.src-ballpark-v1_0_0.flake = false;
  inputs.src-ballpark-v1_0_0.type = "github";
  inputs.src-ballpark-v1_0_0.owner = "Mihara";
  inputs.src-ballpark-v1_0_0.repo = "ballpark";
  inputs.src-ballpark-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."fsnotify".type = "github";
  inputs."fsnotify".owner = "riinr";
  inputs."fsnotify".repo = "flake-nimble";
  inputs."fsnotify".ref = "flake-pinning";
  inputs."fsnotify".dir = "nimpkgs/f/fsnotify";

  outputs = { self, nixpkgs, src-ballpark-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ballpark-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ballpark-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}