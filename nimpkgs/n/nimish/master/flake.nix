{
  description = ''C macro for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimish-master.flake = false;
  inputs.src-nimish-master.type = "github";
  inputs.src-nimish-master.owner = "xflywind";
  inputs.src-nimish-master.repo = "nimish";
  inputs.src-nimish-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimish-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimish-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimish-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}