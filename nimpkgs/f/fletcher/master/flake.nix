{
  description = ''Implementation of the Fletcher checksum algorithm.'';
  inputs.src-fletcher-master.flake = false;
  inputs.src-fletcher-master.type = "github";
  inputs.src-fletcher-master.owner = "Akito13";
  inputs.src-fletcher-master.repo = "nim-fletcher";
  inputs.src-fletcher-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fletcher-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fletcher-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fletcher-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}