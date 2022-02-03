{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';
  inputs.src-bytesequtils-v1_1_3.flake = false;
  inputs.src-bytesequtils-v1_1_3.type = "github";
  inputs.src-bytesequtils-v1_1_3.owner = "Clonkk";
  inputs.src-bytesequtils-v1_1_3.repo = "bytesequtils";
  inputs.src-bytesequtils-v1_1_3.ref = "refs/tags/v1.1.3";
  
  outputs = { self, nixpkgs, src-bytesequtils-v1_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bytesequtils-v1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bytesequtils-v1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}