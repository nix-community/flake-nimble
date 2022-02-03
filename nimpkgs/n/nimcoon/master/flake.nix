{
  description = ''A command-line YouTube player and more'';
  inputs.src-nimcoon-master.flake = false;
  inputs.src-nimcoon-master.type = "other";
  inputs.src-nimcoon-master.owner = "gitweb";
  inputs.src-nimcoon-master.repo = "nimcoon";
  inputs.src-nimcoon-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimcoon-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcoon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcoon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}