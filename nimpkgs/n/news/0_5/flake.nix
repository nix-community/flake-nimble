{
  description = ''Easy websocket with chronos support'';
  inputs.src-news-0_5.flake = false;
  inputs.src-news-0_5.type = "github";
  inputs.src-news-0_5.owner = "tormund";
  inputs.src-news-0_5.repo = "news";
  inputs.src-news-0_5.ref = "refs/tags/0.5";
  
  outputs = { self, nixpkgs, src-news-0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-news-0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-news-0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}