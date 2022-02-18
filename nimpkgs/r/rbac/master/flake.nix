{
  description = ''Simple Role-based Access Control Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rbac-master.flake = false;
  inputs.src-rbac-master.type = "github";
  inputs.src-rbac-master.owner = "ba0f3";
  inputs.src-rbac-master.repo = "rbac.nim";
  inputs.src-rbac-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rbac-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rbac-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rbac-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}