{
  description = ''Easy websocket with chronos support'';
  inputs.src-news-master.flake = false;
  inputs.src-news-master.type = "github";
  inputs.src-news-master.owner = "tormund";
  inputs.src-news-master.repo = "news";
  inputs.src-news-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-news-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-news-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-news-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}