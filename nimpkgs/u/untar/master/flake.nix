{
  description = ''Library for decompressing tar.gz files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-untar-master.flake = false;
  inputs.src-untar-master.type = "github";
  inputs.src-untar-master.owner = "dom96";
  inputs.src-untar-master.repo = "untar";
  inputs.src-untar-master.ref = "refs/heads/master";
  inputs.src-untar-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-untar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-untar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-untar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}