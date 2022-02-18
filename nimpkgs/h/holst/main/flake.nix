{
  description = ''A parser for Jupyter notebooks.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-holst-main.flake = false;
  inputs.src-holst-main.type = "github";
  inputs.src-holst-main.owner = "ruivieira";
  inputs.src-holst-main.repo = "nim-holst";
  inputs.src-holst-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-holst-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-holst-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-holst-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}