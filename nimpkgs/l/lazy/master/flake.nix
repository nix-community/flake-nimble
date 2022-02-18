{
  description = ''Iterator library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-lazy-master.flake = false;
  inputs.src-lazy-master.type = "github";
  inputs.src-lazy-master.owner = "petermora";
  inputs.src-lazy-master.repo = "nimLazy";
  inputs.src-lazy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lazy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lazy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lazy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}