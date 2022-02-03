{
  description = ''Wrapper for ENet UDP networking library'';
  inputs.src-enet-master.flake = false;
  inputs.src-enet-master.type = "github";
  inputs.src-enet-master.owner = "fowlmouth";
  inputs.src-enet-master.repo = "nimrod-enet";
  inputs.src-enet-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-enet-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-enet-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-enet-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}