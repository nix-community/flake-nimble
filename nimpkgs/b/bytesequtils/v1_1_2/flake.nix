{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';
  inputs.src-bytesequtils-v1_1_2.flake = false;
  inputs.src-bytesequtils-v1_1_2.type = "github";
  inputs.src-bytesequtils-v1_1_2.owner = "Clonkk";
  inputs.src-bytesequtils-v1_1_2.repo = "bytesequtils";
  inputs.src-bytesequtils-v1_1_2.ref = "refs/tags/v1.1.2";
  
  outputs = { self, nixpkgs, src-bytesequtils-v1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bytesequtils-v1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bytesequtils-v1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}