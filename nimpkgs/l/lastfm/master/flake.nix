{
  description = ''Last.FM API bindings'';
  inputs.src-lastfm-master.flake = false;
  inputs.src-lastfm-master.type = "gitlab";
  inputs.src-lastfm-master.owner = "tandy1000";
  inputs.src-lastfm-master.repo = "lastfm-nim";
  inputs.src-lastfm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lastfm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lastfm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lastfm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}