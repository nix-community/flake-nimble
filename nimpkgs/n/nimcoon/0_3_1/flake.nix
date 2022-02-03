{
  description = ''A command-line YouTube player and more'';
  inputs.src-nimcoon-0_3_1.flake = false;
  inputs.src-nimcoon-0_3_1.type = "other";
  inputs.src-nimcoon-0_3_1.owner = "gitweb";
  inputs.src-nimcoon-0_3_1.repo = "nimcoon";
  inputs.src-nimcoon-0_3_1.ref = "refs/tags/0.3.1";
  
  outputs = { self, nixpkgs, src-nimcoon-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcoon-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcoon-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}