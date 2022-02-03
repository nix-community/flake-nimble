{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_6_8.flake = false;
  inputs.src-nimterop-v0_6_8.type = "github";
  inputs.src-nimterop-v0_6_8.owner = "genotrance";
  inputs.src-nimterop-v0_6_8.repo = "nimterop";
  inputs.src-nimterop-v0_6_8.ref = "refs/tags/v0.6.8";
  
  outputs = { self, nixpkgs, src-nimterop-v0_6_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_6_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}