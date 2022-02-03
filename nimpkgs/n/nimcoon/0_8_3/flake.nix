{
  description = ''A command-line YouTube player and more'';
  inputs.src-nimcoon-0_8_3.flake = false;
  inputs.src-nimcoon-0_8_3.type = "other";
  inputs.src-nimcoon-0_8_3.owner = "gitweb";
  inputs.src-nimcoon-0_8_3.repo = "nimcoon";
  inputs.src-nimcoon-0_8_3.ref = "refs/tags/0.8.3";
  
  outputs = { self, nixpkgs, src-nimcoon-0_8_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcoon-0_8_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcoon-0_8_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}