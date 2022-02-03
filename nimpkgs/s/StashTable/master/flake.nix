{
  description = ''Concurrent hash table'';
  inputs.src-stashtable-master.flake = false;
  inputs.src-stashtable-master.type = "github";
  inputs.src-stashtable-master.owner = "olliNiinivaara";
  inputs.src-stashtable-master.repo = "StashTable";
  inputs.src-stashtable-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-StashTable-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-StashTable-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-StashTable-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}