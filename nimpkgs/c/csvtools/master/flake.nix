{
  description = ''Manage CSV files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-csvtools-master.flake = false;
  inputs.src-csvtools-master.type = "github";
  inputs.src-csvtools-master.owner = "andreaferretti";
  inputs.src-csvtools-master.repo = "csvtools";
  inputs.src-csvtools-master.ref = "refs/heads/master";
  inputs.src-csvtools-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csvtools-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvtools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csvtools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}