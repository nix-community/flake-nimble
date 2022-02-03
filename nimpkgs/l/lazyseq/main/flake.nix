{
  description = ''Lazy evaluated sequences'';
  inputs.src-lazyseq-main.flake = false;
  inputs.src-lazyseq-main.type = "github";
  inputs.src-lazyseq-main.owner = "markspanbroek";
  inputs.src-lazyseq-main.repo = "nim-lazyseq";
  inputs.src-lazyseq-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-lazyseq-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lazyseq-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lazyseq-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}