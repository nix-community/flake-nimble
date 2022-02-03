{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_6_2.flake = false;
  inputs.src-nimterop-v0_6_2.type = "github";
  inputs.src-nimterop-v0_6_2.owner = "genotrance";
  inputs.src-nimterop-v0_6_2.repo = "nimterop";
  inputs.src-nimterop-v0_6_2.ref = "refs/tags/v0.6.2";
  
  outputs = { self, nixpkgs, src-nimterop-v0_6_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}