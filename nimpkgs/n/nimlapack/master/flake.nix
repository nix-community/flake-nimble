{
  description = ''LAPACK bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimlapack-master.flake = false;
  inputs.src-nimlapack-master.type = "github";
  inputs.src-nimlapack-master.owner = "andreaferretti";
  inputs.src-nimlapack-master.repo = "nimlapack";
  inputs.src-nimlapack-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlapack-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlapack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlapack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}