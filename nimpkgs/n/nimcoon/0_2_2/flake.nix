{
  description = ''A command-line YouTube player and more'';
  inputs.src-nimcoon-0_2_2.flake = false;
  inputs.src-nimcoon-0_2_2.type = "other";
  inputs.src-nimcoon-0_2_2.owner = "gitweb";
  inputs.src-nimcoon-0_2_2.repo = "nimcoon";
  inputs.src-nimcoon-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-nimcoon-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcoon-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcoon-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}