{
  description = ''Huffman encode/decode for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-huffman-master.flake = false;
  inputs.src-huffman-master.type = "github";
  inputs.src-huffman-master.owner = "xzeshen";
  inputs.src-huffman-master.repo = "huffman";
  inputs.src-huffman-master.ref = "refs/heads/master";
  inputs.src-huffman-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-huffman-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-huffman-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-huffman-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}