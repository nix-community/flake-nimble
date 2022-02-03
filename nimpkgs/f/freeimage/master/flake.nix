{
  description = ''Wrapper for the FreeImage library'';
  inputs.src-freeimage-master.flake = false;
  inputs.src-freeimage-master.type = "github";
  inputs.src-freeimage-master.owner = "barcharcraz";
  inputs.src-freeimage-master.repo = "nim-freeimage";
  inputs.src-freeimage-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-freeimage-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-freeimage-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-freeimage-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}