{
  description = ''Functions for string validation'';
  inputs.src-validator-master.flake = false;
  inputs.src-validator-master.type = "github";
  inputs.src-validator-master.owner = "Adeohluwa";
  inputs.src-validator-master.repo = "validator";
  inputs.src-validator-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-validator-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-validator-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-validator-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}