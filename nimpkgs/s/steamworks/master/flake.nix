{
  description = ''Steamworks SDK API for shipping games on Steam.'';
  inputs.src-steamworks-master.flake = false;
  inputs.src-steamworks-master.type = "github";
  inputs.src-steamworks-master.owner = "treeform";
  inputs.src-steamworks-master.repo = "steamworks";
  inputs.src-steamworks-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-steamworks-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-steamworks-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-steamworks-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}