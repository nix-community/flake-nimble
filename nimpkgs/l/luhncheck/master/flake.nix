{
  description = ''Implementation of Luhn algorithm in nim.'';
  inputs.src-luhncheck-master.flake = false;
  inputs.src-luhncheck-master.type = "github";
  inputs.src-luhncheck-master.owner = "sillibird";
  inputs.src-luhncheck-master.repo = "luhncheck";
  inputs.src-luhncheck-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-luhncheck-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-luhncheck-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-luhncheck-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}