{
  description = ''Polygon Clipper Library (Martinez Algorithm)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-polybool-master.flake = false;
  inputs.src-polybool-master.type = "github";
  inputs.src-polybool-master.owner = "jangko";
  inputs.src-polybool-master.repo = "polyBool";
  inputs.src-polybool-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-polybool-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polybool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-polybool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}