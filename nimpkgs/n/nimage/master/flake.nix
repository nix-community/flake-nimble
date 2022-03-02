{
  description = ''The image management library written in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimage-master.flake = false;
  inputs.src-nimage-master.type = "github";
  inputs.src-nimage-master.owner = "ethosa";
  inputs.src-nimage-master.repo = "nimage";
  inputs.src-nimage-master.ref = "refs/heads/master";
  inputs.src-nimage-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimage-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimage-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimage-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}