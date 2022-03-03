{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stalinsort-master.flake = false;
  inputs.src-stalinsort-master.type = "github";
  inputs.src-stalinsort-master.owner = "tonogram";
  inputs.src-stalinsort-master.repo = "stalinsort";
  inputs.src-stalinsort-master.ref = "refs/heads/master";
  inputs.src-stalinsort-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stalinsort-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stalinsort-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stalinsort-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}