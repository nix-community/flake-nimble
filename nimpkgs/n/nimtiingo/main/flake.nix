{
  description = ''Tiingo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimTiingo-main.flake = false;
  inputs.src-nimTiingo-main.type = "github";
  inputs.src-nimTiingo-main.owner = "rolandgg";
  inputs.src-nimTiingo-main.repo = "nimTiingo";
  inputs.src-nimTiingo-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimTiingo-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimTiingo-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimTiingo-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}