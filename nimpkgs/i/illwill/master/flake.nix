{
  description = ''A curses inspired simple cross-platform console library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-illwill-master.flake = false;
  inputs.src-illwill-master.type = "github";
  inputs.src-illwill-master.owner = "johnnovak";
  inputs.src-illwill-master.repo = "illwill";
  inputs.src-illwill-master.ref = "refs/heads/master";
  inputs.src-illwill-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-illwill-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-illwill-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-illwill-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}