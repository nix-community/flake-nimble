{
  description = ''Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver'';
  inputs.src-primme-master.flake = false;
  inputs.src-primme-master.type = "github";
  inputs.src-primme-master.owner = "jxy";
  inputs.src-primme-master.repo = "primme";
  inputs.src-primme-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-primme-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-primme-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-primme-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}