{
  description = ''Root finding functions for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-roots-master.flake = false;
  inputs.src-roots-master.type = "github";
  inputs.src-roots-master.owner = "BarrOff";
  inputs.src-roots-master.repo = "roots";
  inputs.src-roots-master.ref = "refs/heads/master";
  inputs.src-roots-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-roots-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-roots-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-roots-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}