{
  description = ''RSS library'';
  inputs.src-rss-master.flake = false;
  inputs.src-rss-master.type = "github";
  inputs.src-rss-master.owner = "achesak";
  inputs.src-rss-master.repo = "nim-rss";
  inputs.src-rss-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rss-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rss-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rss-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}