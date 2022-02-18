{
  description = ''Last.FM API bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-lastfm-master.flake = false;
  inputs.src-lastfm-master.type = "gitlab";
  inputs.src-lastfm-master.owner = "tandy1000";
  inputs.src-lastfm-master.repo = "lastfm-nim";
  inputs.src-lastfm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lastfm-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lastfm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lastfm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}