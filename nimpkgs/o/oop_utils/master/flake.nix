{
  description = ''Macro for building OOP class hierarchies based on closure methods.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-oop_utils-master.flake = false;
  inputs.src-oop_utils-master.type = "github";
  inputs.src-oop_utils-master.owner = "bluenote10";
  inputs.src-oop_utils-master.repo = "oop_utils";
  inputs.src-oop_utils-master.ref = "refs/heads/master";
  inputs.src-oop_utils-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-oop_utils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oop_utils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oop_utils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}