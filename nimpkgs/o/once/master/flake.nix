{
  description = ''Once provides a type that will enforce that a callback is invoked only once.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-once-master.flake = false;
  inputs.src-once-master.type = "other";
  inputs.src-once-master.owner = "~euantorano";
  inputs.src-once-master.repo = "once.nim";
  inputs.src-once-master.ref = "refs/heads/master";
  inputs.src-once-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-once-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-once-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-once-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}