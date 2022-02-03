{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_3_6.flake = false;
  inputs.src-nimterop-v0_3_6.type = "github";
  inputs.src-nimterop-v0_3_6.owner = "genotrance";
  inputs.src-nimterop-v0_3_6.repo = "nimterop";
  inputs.src-nimterop-v0_3_6.ref = "refs/tags/v0.3.6";
  
  outputs = { self, nixpkgs, src-nimterop-v0_3_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}