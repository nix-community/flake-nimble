{
  description = ''Easy websocket with chronos support'';
  inputs.src-news-0_2.flake = false;
  inputs.src-news-0_2.type = "github";
  inputs.src-news-0_2.owner = "tormund";
  inputs.src-news-0_2.repo = "news";
  inputs.src-news-0_2.ref = "refs/tags/0.2";
  
  outputs = { self, nixpkgs, src-news-0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-news-0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-news-0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}