{
  description = ''Various collections and utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-collections-master.flake = false;
  inputs.src-collections-master.type = "github";
  inputs.src-collections-master.owner = "zielmicha";
  inputs.src-collections-master.repo = "collections.nim";
  inputs.src-collections-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-collections-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-collections-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-collections-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}