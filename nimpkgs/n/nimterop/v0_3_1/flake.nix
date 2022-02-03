{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_3_1.flake = false;
  inputs.src-nimterop-v0_3_1.type = "github";
  inputs.src-nimterop-v0_3_1.owner = "genotrance";
  inputs.src-nimterop-v0_3_1.repo = "nimterop";
  inputs.src-nimterop-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-nimterop-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}