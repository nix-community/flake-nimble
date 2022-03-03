{
  description = ''A compile-time, compact, fast, without allocation, state-machine generator.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-synthesis-master.flake = false;
  inputs.src-synthesis-master.type = "github";
  inputs.src-synthesis-master.owner = "mratsim";
  inputs.src-synthesis-master.repo = "Synthesis";
  inputs.src-synthesis-master.ref = "refs/heads/master";
  inputs.src-synthesis-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-synthesis-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-synthesis-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-synthesis-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}