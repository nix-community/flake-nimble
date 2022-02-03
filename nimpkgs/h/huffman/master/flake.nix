{
  description = ''Huffman encode/decode for Nim.'';
  inputs.src-huffman-master.flake = false;
  inputs.src-huffman-master.type = "github";
  inputs.src-huffman-master.owner = "xzeshen";
  inputs.src-huffman-master.repo = "huffman";
  inputs.src-huffman-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-huffman-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-huffman-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-huffman-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}