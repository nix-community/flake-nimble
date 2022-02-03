{
  description = ''Dynamically resizable data structure optimized for fast iteration.'';
  inputs.src-faststack-master.flake = false;
  inputs.src-faststack-master.type = "github";
  inputs.src-faststack-master.owner = "Vladar4";
  inputs.src-faststack-master.repo = "FastStack";
  inputs.src-faststack-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-faststack-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faststack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-faststack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}