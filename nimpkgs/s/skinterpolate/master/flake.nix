{
  description = ''Interpolation routines for data and animation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-skinterpolate-master.flake = false;
  inputs.src-skinterpolate-master.type = "github";
  inputs.src-skinterpolate-master.owner = "Skrylar";
  inputs.src-skinterpolate-master.repo = "skInterpolate";
  inputs.src-skinterpolate-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-skinterpolate-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-skinterpolate-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-skinterpolate-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}