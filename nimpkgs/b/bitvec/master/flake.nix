{
  description = ''Extensible bit vector integer encoding library'';
  inputs.src-bitvec-master.flake = false;
  inputs.src-bitvec-master.type = "github";
  inputs.src-bitvec-master.owner = "keyme";
  inputs.src-bitvec-master.repo = "nim_bitvec";
  inputs.src-bitvec-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bitvec-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitvec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitvec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}