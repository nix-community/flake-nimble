{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';
  inputs.src-nimgame-v0_3.flake = false;
  inputs.src-nimgame-v0_3.type = "github";
  inputs.src-nimgame-v0_3.owner = "Vladar4";
  inputs.src-nimgame-v0_3.repo = "nimgame";
  inputs.src-nimgame-v0_3.ref = "refs/tags/v0.3";
  
  outputs = { self, nixpkgs, src-nimgame-v0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgame-v0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgame-v0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}