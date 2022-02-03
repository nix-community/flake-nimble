{
  description = ''Efficient Bloom filter implementation in Nim using MurmurHash3.'';
  inputs.src-bloom-master.flake = false;
  inputs.src-bloom-master.type = "github";
  inputs.src-bloom-master.owner = "boydgreenfield";
  inputs.src-bloom-master.repo = "nimrod-bloom";
  inputs.src-bloom-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bloom-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bloom-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bloom-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}