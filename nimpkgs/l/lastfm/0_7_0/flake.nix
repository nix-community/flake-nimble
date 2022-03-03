{
  description = ''Last.FM API bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lastfm-0_7_0.flake = false;
  inputs.src-lastfm-0_7_0.type = "gitlab";
  inputs.src-lastfm-0_7_0.owner = "tandy1000";
  inputs.src-lastfm-0_7_0.repo = "lastfm-nim";
  inputs.src-lastfm-0_7_0.ref = "refs/tags/0.7.0";
  inputs.src-lastfm-0_7_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lastfm-0_7_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lastfm-0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lastfm-0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}