{
  description = ''Bit Shuffling Block Compressor (C-Blosc)'';
  inputs.src-blosc-master.flake = false;
  inputs.src-blosc-master.type = "github";
  inputs.src-blosc-master.owner = "Vindaar";
  inputs.src-blosc-master.repo = "nblosc";
  inputs.src-blosc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-blosc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blosc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-blosc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}