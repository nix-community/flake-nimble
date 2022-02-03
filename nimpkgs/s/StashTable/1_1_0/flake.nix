{
  description = ''Concurrent hash table'';
  inputs.src-stashtable-1_1_0.flake = false;
  inputs.src-stashtable-1_1_0.type = "github";
  inputs.src-stashtable-1_1_0.owner = "olliNiinivaara";
  inputs.src-stashtable-1_1_0.repo = "StashTable";
  inputs.src-stashtable-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-StashTable-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-StashTable-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-StashTable-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}