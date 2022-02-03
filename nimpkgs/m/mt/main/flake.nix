{
  description = ''A simple TLDR pages client'';
  inputs.src-mt-main.flake = false;
  inputs.src-mt-main.type = "other";
  inputs.src-mt-main.owner = "eqf0";
  inputs.src-mt-main.repo = "mt";
  inputs.src-mt-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-mt-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mt-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mt-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}