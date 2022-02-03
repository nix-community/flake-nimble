{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';
  inputs.src-bytesequtils-v1_1_1.flake = false;
  inputs.src-bytesequtils-v1_1_1.type = "github";
  inputs.src-bytesequtils-v1_1_1.owner = "Clonkk";
  inputs.src-bytesequtils-v1_1_1.repo = "bytesequtils";
  inputs.src-bytesequtils-v1_1_1.ref = "refs/tags/v1.1.1";
  
  outputs = { self, nixpkgs, src-bytesequtils-v1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bytesequtils-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bytesequtils-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}