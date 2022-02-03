{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_6_3.flake = false;
  inputs.src-nimterop-v0_6_3.type = "github";
  inputs.src-nimterop-v0_6_3.owner = "genotrance";
  inputs.src-nimterop-v0_6_3.repo = "nimterop";
  inputs.src-nimterop-v0_6_3.ref = "refs/tags/v0.6.3";
  
  outputs = { self, nixpkgs, src-nimterop-v0_6_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_6_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}