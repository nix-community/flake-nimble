{
  description = ''Bisection algorithms ported from Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bisect-master.flake = false;
  inputs.src-bisect-master.type = "github";
  inputs.src-bisect-master.owner = "berquist";
  inputs.src-bisect-master.repo = "bisect";
  inputs.src-bisect-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bisect-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bisect-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bisect-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}