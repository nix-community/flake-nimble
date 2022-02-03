{
  description = ''Tencil is a mustache-compatible JSON based template engine for Nim.'';
  inputs.src-tencil-main.flake = false;
  inputs.src-tencil-main.type = "github";
  inputs.src-tencil-main.owner = "enimatek-nl";
  inputs.src-tencil-main.repo = "tencil";
  inputs.src-tencil-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-tencil-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tencil-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tencil-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}