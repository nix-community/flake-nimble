{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_6_12.flake = false;
  inputs.src-nimterop-v0_6_12.type = "github";
  inputs.src-nimterop-v0_6_12.owner = "genotrance";
  inputs.src-nimterop-v0_6_12.repo = "nimterop";
  inputs.src-nimterop-v0_6_12.ref = "refs/tags/v0.6.12";
  
  outputs = { self, nixpkgs, src-nimterop-v0_6_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_6_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}