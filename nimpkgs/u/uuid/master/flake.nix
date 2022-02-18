{
  description = ''UUID wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-uuid-master.flake = false;
  inputs.src-uuid-master.type = "github";
  inputs.src-uuid-master.owner = "idlewan";
  inputs.src-uuid-master.repo = "nim-uuid";
  inputs.src-uuid-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-uuid-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuid-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uuid-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}