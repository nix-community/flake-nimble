{
  description = ''An experimental deep learning framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-exprgrad-main.flake = false;
  inputs.src-exprgrad-main.type = "github";
  inputs.src-exprgrad-main.owner = "can-lehmann";
  inputs.src-exprgrad-main.repo = "exprgrad";
  inputs.src-exprgrad-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-exprgrad-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-exprgrad-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-exprgrad-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}