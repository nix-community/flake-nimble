{
  description = ''Nim bindings for libass.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ass-master.flake = false;
  inputs.src-ass-master.type = "github";
  inputs.src-ass-master.owner = "0kalekale";
  inputs.src-ass-master.repo = "libass-nim";
  inputs.src-ass-master.ref = "refs/heads/master";
  inputs.src-ass-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ass-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}