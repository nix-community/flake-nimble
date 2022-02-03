{
  description = ''Bindings for CFITSIO, a library to read/write FITSIO images and tables.'';
  inputs.src-nimcfitsio-master.flake = false;
  inputs.src-nimcfitsio-master.type = "github";
  inputs.src-nimcfitsio-master.owner = "ziotom78";
  inputs.src-nimcfitsio-master.repo = "nimcfitsio";
  inputs.src-nimcfitsio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimcfitsio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcfitsio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcfitsio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}