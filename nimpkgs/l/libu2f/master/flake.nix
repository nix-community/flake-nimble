{
  description = ''A wrapper for libu2f, a library for FIDO/U2F'';
  inputs.src-libu2f-master.flake = false;
  inputs.src-libu2f-master.type = "github";
  inputs.src-libu2f-master.owner = "FedericoCeratto";
  inputs.src-libu2f-master.repo = "nim-libu2f";
  inputs.src-libu2f-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libu2f-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libu2f-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libu2f-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}