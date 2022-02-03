{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_5_9.flake = false;
  inputs.src-nimterop-v0_5_9.type = "github";
  inputs.src-nimterop-v0_5_9.owner = "genotrance";
  inputs.src-nimterop-v0_5_9.repo = "nimterop";
  inputs.src-nimterop-v0_5_9.ref = "refs/tags/v0.5.9";
  
  outputs = { self, nixpkgs, src-nimterop-v0_5_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_5_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_5_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}