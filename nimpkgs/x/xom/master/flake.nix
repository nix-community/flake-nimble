{
  description = ''Transform XML trees into performant JavaScript DOM calls at compile-time.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xom-master.flake = false;
  inputs.src-xom-master.type = "github";
  inputs.src-xom-master.owner = "schneiderfelipe";
  inputs.src-xom-master.repo = "xom";
  inputs.src-xom-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xom-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xom-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xom-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}