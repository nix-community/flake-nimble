{
  description = ''Least recently used (LRU) cache'';
  inputs.src-lrucache-1_1_2.flake = false;
  inputs.src-lrucache-1_1_2.type = "github";
  inputs.src-lrucache-1_1_2.owner = "jackhftang";
  inputs.src-lrucache-1_1_2.repo = "lrucache";
  inputs.src-lrucache-1_1_2.ref = "refs/tags/1.1.2";
  
  outputs = { self, nixpkgs, src-lrucache-1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lrucache-1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lrucache-1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}