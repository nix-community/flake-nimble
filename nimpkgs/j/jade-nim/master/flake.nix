{
  description = ''Compiles jade templates to Nim procedures.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jade-nim-master.flake = false;
  inputs.src-jade-nim-master.type = "github";
  inputs.src-jade-nim-master.owner = "idlewan";
  inputs.src-jade-nim-master.repo = "jade-nim";
  inputs.src-jade-nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jade-nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jade-nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jade-nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}