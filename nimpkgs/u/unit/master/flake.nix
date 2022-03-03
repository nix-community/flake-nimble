{
  description = ''A library that provides unit types in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-Unit-master.flake = false;
  inputs.src-Unit-master.type = "github";
  inputs.src-Unit-master.owner = "momeemt";
  inputs.src-Unit-master.repo = "Unit";
  inputs.src-Unit-master.ref = "refs/heads/master";
  inputs.src-Unit-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-Unit-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Unit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Unit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}