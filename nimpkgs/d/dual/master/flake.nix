{
  description = ''Implementation of dual numbers'';
  inputs.src-dual-master.flake = false;
  inputs.src-dual-master.type = "github";
  inputs.src-dual-master.owner = "drjdn";
  inputs.src-dual-master.repo = "nim_dual";
  inputs.src-dual-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dual-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dual-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dual-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}