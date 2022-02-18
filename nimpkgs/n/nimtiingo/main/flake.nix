{
  description = ''Tiingo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimtiingo-main.flake = false;
  inputs.src-nimtiingo-main.type = "github";
  inputs.src-nimtiingo-main.owner = "rolandgg";
  inputs.src-nimtiingo-main.repo = "nimTiingo";
  inputs.src-nimtiingo-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtiingo-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtiingo-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtiingo-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}