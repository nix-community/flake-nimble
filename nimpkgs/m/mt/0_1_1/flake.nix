{
  description = ''A simple TLDR pages client'';
  inputs.src-mt-0_1_1.flake = false;
  inputs.src-mt-0_1_1.type = "other";
  inputs.src-mt-0_1_1.owner = "eqf0";
  inputs.src-mt-0_1_1.repo = "mt";
  inputs.src-mt-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-mt-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mt-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mt-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}