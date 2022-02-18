{
  description = ''This module is a port of the Java implementation of the Zhang-Shasha algorithm for tree edit distance'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zhsh-master.flake = false;
  inputs.src-zhsh-master.type = "github";
  inputs.src-zhsh-master.owner = "PMunch";
  inputs.src-zhsh-master.repo = "zhangshasha";
  inputs.src-zhsh-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zhsh-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zhsh-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zhsh-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}