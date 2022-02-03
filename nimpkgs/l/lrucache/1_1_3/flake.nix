{
  description = ''Least recently used (LRU) cache'';
  inputs.src-lrucache-1_1_3.flake = false;
  inputs.src-lrucache-1_1_3.type = "github";
  inputs.src-lrucache-1_1_3.owner = "jackhftang";
  inputs.src-lrucache-1_1_3.repo = "lrucache";
  inputs.src-lrucache-1_1_3.ref = "refs/tags/1.1.3";
  
  outputs = { self, nixpkgs, src-lrucache-1_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lrucache-1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lrucache-1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}