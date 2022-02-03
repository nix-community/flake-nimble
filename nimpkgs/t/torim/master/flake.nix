{
  description = ''Updated version of tor.nim from https://github.com/FedericoCeratto/nim-tor'';
  inputs.src-torim-master.flake = false;
  inputs.src-torim-master.type = "github";
  inputs.src-torim-master.owner = "KittyTechnoProgrammer";
  inputs.src-torim-master.repo = "torim";
  inputs.src-torim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-torim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}