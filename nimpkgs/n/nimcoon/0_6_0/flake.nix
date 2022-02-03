{
  description = ''A command-line YouTube player and more'';
  inputs.src-nimcoon-0_6_0.flake = false;
  inputs.src-nimcoon-0_6_0.type = "other";
  inputs.src-nimcoon-0_6_0.owner = "gitweb";
  inputs.src-nimcoon-0_6_0.repo = "nimcoon";
  inputs.src-nimcoon-0_6_0.ref = "refs/tags/0.6.0";
  
  outputs = { self, nixpkgs, src-nimcoon-0_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcoon-0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcoon-0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}