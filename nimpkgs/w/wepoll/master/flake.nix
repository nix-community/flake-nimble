{
  description = ''Windows epoll wrapper.'';
  inputs.src-wepoll-master.flake = false;
  inputs.src-wepoll-master.type = "github";
  inputs.src-wepoll-master.owner = "xflywind";
  inputs.src-wepoll-master.repo = "wepoll";
  inputs.src-wepoll-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-wepoll-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wepoll-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wepoll-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}