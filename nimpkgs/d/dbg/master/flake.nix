{
  description = ''dbg template; in debug echo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dbg-master.flake = false;
  inputs.src-dbg-master.type = "github";
  inputs.src-dbg-master.owner = "enthus1ast";
  inputs.src-dbg-master.repo = "nimDbg";
  inputs.src-dbg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dbg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dbg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dbg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}