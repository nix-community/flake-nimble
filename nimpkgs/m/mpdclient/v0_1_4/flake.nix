{
  description = ''MPD client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mpdclient-v0_1_4.flake = false;
  inputs.src-mpdclient-v0_1_4.type = "github";
  inputs.src-mpdclient-v0_1_4.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_1_4.repo = "mpdclient";
  inputs.src-mpdclient-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-mpdclient-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mpdclient-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mpdclient-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}