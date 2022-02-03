{
  description = ''Nim wrapper for the libpng library'';
  inputs.src-png-master.flake = false;
  inputs.src-png-master.type = "github";
  inputs.src-png-master.owner = "barcharcraz";
  inputs.src-png-master.repo = "nimlibpng";
  inputs.src-png-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-png-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-png-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-png-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}