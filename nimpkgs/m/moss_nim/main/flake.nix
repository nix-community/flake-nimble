{
  description = ''Moss (Measure of Software Similarity) implementation in Nim.'';
  inputs.src-moss_nim-main.flake = false;
  inputs.src-moss_nim-main.type = "github";
  inputs.src-moss_nim-main.owner = "D4D3VD4V3";
  inputs.src-moss_nim-main.repo = "moss_nim";
  inputs.src-moss_nim-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-moss_nim-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moss_nim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moss_nim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}