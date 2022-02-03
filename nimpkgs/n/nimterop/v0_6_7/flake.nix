{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_6_7.flake = false;
  inputs.src-nimterop-v0_6_7.type = "github";
  inputs.src-nimterop-v0_6_7.owner = "genotrance";
  inputs.src-nimterop-v0_6_7.repo = "nimterop";
  inputs.src-nimterop-v0_6_7.ref = "refs/tags/v0.6.7";
  
  outputs = { self, nixpkgs, src-nimterop-v0_6_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_6_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}