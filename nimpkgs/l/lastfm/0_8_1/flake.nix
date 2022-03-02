{
  description = ''Last.FM API bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-lastfm-0_8_1.flake = false;
  inputs.src-lastfm-0_8_1.type = "gitlab";
  inputs.src-lastfm-0_8_1.owner = "tandy1000";
  inputs.src-lastfm-0_8_1.repo = "lastfm-nim";
  inputs.src-lastfm-0_8_1.ref = "refs/tags/0.8.1";
  inputs.src-lastfm-0_8_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lastfm-0_8_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lastfm-0_8_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lastfm-0_8_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}