{
  description = ''A go routine like nim implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimroutine-master.flake = false;
  inputs.src-nimroutine-master.type = "github";
  inputs.src-nimroutine-master.owner = "rogercloud";
  inputs.src-nimroutine-master.repo = "nim-routine";
  inputs.src-nimroutine-master.ref = "refs/heads/master";
  inputs.src-nimroutine-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimroutine-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimroutine-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimroutine-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}