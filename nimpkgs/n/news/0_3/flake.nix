{
  description = ''Easy websocket with chronos support'';
  inputs.src-news-0_3.flake = false;
  inputs.src-news-0_3.type = "github";
  inputs.src-news-0_3.owner = "tormund";
  inputs.src-news-0_3.repo = "news";
  inputs.src-news-0_3.ref = "refs/tags/0.3";
  
  outputs = { self, nixpkgs, src-news-0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-news-0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-news-0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}