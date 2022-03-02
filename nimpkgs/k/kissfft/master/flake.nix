{
  description = ''Nim binding for KissFFT Fast Fourier Transform library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-kissfft-master.flake = false;
  inputs.src-kissfft-master.type = "github";
  inputs.src-kissfft-master.owner = "m13253";
  inputs.src-kissfft-master.repo = "nim-kissfft";
  inputs.src-kissfft-master.ref = "refs/heads/master";
  inputs.src-kissfft-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kissfft-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kissfft-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kissfft-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}