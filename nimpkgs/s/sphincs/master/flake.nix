{
  description = ''SPHINCS⁺ stateless hash-based signature scheme'';
  inputs.src-sphincs-master.flake = false;
  inputs.src-sphincs-master.type = "other";
  inputs.src-sphincs-master.owner = "~ehmry";
  inputs.src-sphincs-master.repo = "nim_sphincs";
  inputs.src-sphincs-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sphincs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sphincs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sphincs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}