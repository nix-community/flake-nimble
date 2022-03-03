{
  description = ''Tiingo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimTiingo-main.flake = false;
  inputs.src-nimTiingo-main.type = "github";
  inputs.src-nimTiingo-main.owner = "rolandgg";
  inputs.src-nimTiingo-main.repo = "nimTiingo";
  inputs.src-nimTiingo-main.ref = "refs/heads/main";
  inputs.src-nimTiingo-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimTiingo-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimTiingo-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimTiingo-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}