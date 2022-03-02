{
  description = ''Easy websocket with chronos support'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-news-0_3.flake = false;
  inputs.src-news-0_3.type = "github";
  inputs.src-news-0_3.owner = "tormund";
  inputs.src-news-0_3.repo = "news";
  inputs.src-news-0_3.ref = "refs/tags/0.3";
  inputs.src-news-0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-news-0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-news-0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-news-0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}