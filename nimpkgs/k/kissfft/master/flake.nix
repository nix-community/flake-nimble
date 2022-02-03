{
  description = ''Nim binding for KissFFT Fast Fourier Transform library'';
  inputs.src-kissfft-master.flake = false;
  inputs.src-kissfft-master.type = "github";
  inputs.src-kissfft-master.owner = "m13253";
  inputs.src-kissfft-master.repo = "nim-kissfft";
  inputs.src-kissfft-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-kissfft-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kissfft-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kissfft-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}