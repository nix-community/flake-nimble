{
  description = ''gsl C Api wrapped for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gsl-main.flake = false;
  inputs.src-gsl-main.type = "github";
  inputs.src-gsl-main.owner = "YesDrX";
  inputs.src-gsl-main.repo = "gsl-nim";
  inputs.src-gsl-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gsl-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gsl-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gsl-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}