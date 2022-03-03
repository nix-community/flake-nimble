{
  description = ''Lazy evaluated sequences'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lazyseq-main.flake = false;
  inputs.src-lazyseq-main.type = "github";
  inputs.src-lazyseq-main.owner = "markspanbroek";
  inputs.src-lazyseq-main.repo = "nim-lazyseq";
  inputs.src-lazyseq-main.ref = "refs/heads/main";
  inputs.src-lazyseq-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lazyseq-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lazyseq-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lazyseq-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}