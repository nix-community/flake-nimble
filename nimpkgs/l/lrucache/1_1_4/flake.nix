{
  description = ''Least recently used (LRU) cache'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lrucache-1_1_4.flake = false;
  inputs.src-lrucache-1_1_4.type = "github";
  inputs.src-lrucache-1_1_4.owner = "jackhftang";
  inputs.src-lrucache-1_1_4.repo = "lrucache";
  inputs.src-lrucache-1_1_4.ref = "refs/tags/1.1.4";
  inputs.src-lrucache-1_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lrucache-1_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lrucache-1_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lrucache-1_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}