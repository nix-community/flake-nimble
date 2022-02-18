{
  description = ''Adds class support to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-classes-master.flake = false;
  inputs.src-classes-master.type = "github";
  inputs.src-classes-master.owner = "jjv360";
  inputs.src-classes-master.repo = "nim-classes";
  inputs.src-classes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-classes-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-classes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}