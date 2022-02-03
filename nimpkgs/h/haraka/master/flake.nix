{
  description = ''Haraka v2 short-input hash function'';
  inputs.src-haraka-master.flake = false;
  inputs.src-haraka-master.type = "other";
  inputs.src-haraka-master.owner = "~ehmry";
  inputs.src-haraka-master.repo = "nim_haraka";
  inputs.src-haraka-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-haraka-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-haraka-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-haraka-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}