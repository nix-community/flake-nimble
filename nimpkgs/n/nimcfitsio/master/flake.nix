{
  description = ''Bindings for CFITSIO, a library to read/write FITSIO images and tables.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimcfitsio-master.flake = false;
  inputs.src-nimcfitsio-master.type = "github";
  inputs.src-nimcfitsio-master.owner = "ziotom78";
  inputs.src-nimcfitsio-master.repo = "nimcfitsio";
  inputs.src-nimcfitsio-master.ref = "refs/heads/master";
  inputs.src-nimcfitsio-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcfitsio-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcfitsio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcfitsio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}