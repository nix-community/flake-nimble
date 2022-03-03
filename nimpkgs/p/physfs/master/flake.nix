{
  description = ''A library to provide abstract access to various archives.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-physfs-master.flake = false;
  inputs.src-physfs-master.type = "github";
  inputs.src-physfs-master.owner = "fowlmouth";
  inputs.src-physfs-master.repo = "physfs";
  inputs.src-physfs-master.ref = "refs/heads/master";
  inputs.src-physfs-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-physfs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-physfs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-physfs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}