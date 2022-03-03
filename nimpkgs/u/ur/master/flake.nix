{
  description = ''A Universal Result macro/object that normalizes the information returned from a procedure'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ur-master.flake = false;
  inputs.src-ur-master.type = "github";
  inputs.src-ur-master.owner = "JohnAD";
  inputs.src-ur-master.repo = "ur";
  inputs.src-ur-master.ref = "refs/heads/master";
  inputs.src-ur-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ur-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ur-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ur-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}