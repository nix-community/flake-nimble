{
  description = ''MPD client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mpdclient-v0_1_5.flake = false;
  inputs.src-mpdclient-v0_1_5.type = "github";
  inputs.src-mpdclient-v0_1_5.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_1_5.repo = "mpdclient";
  inputs.src-mpdclient-v0_1_5.ref = "refs/tags/v0.1.5";
  inputs.src-mpdclient-v0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mpdclient-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mpdclient-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}