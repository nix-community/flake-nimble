{
  description = ''Concurrent hash table'';
  inputs.src-stashtable-1_2_1.flake = false;
  inputs.src-stashtable-1_2_1.type = "github";
  inputs.src-stashtable-1_2_1.owner = "olliNiinivaara";
  inputs.src-stashtable-1_2_1.repo = "StashTable";
  inputs.src-stashtable-1_2_1.ref = "refs/tags/1.2.1";
  
  outputs = { self, nixpkgs, src-StashTable-1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-StashTable-1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-StashTable-1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}