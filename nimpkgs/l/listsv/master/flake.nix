{
  description = ''Basic operations on singly and doubly linked lists.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-listsv-master.flake = false;
  inputs.src-listsv-master.type = "github";
  inputs.src-listsv-master.owner = "srwiley";
  inputs.src-listsv-master.repo = "listsv";
  inputs.src-listsv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-listsv-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-listsv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-listsv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}