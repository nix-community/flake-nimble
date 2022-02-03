{
  description = ''Mathematical formulas'';
  inputs.src-formulas-master.flake = false;
  inputs.src-formulas-master.type = "other";
  inputs.src-formulas-master.owner = "thisago";
  inputs.src-formulas-master.repo = "formulas.nim";
  inputs.src-formulas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-formulas-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-formulas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-formulas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}