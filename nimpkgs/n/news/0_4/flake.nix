{
  description = ''Easy websocket with chronos support'';
  inputs.src-news-0_4.flake = false;
  inputs.src-news-0_4.type = "github";
  inputs.src-news-0_4.owner = "tormund";
  inputs.src-news-0_4.repo = "news";
  inputs.src-news-0_4.ref = "refs/tags/0.4";
  
  outputs = { self, nixpkgs, src-news-0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-news-0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-news-0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}