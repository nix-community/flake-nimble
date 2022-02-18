{
  description = ''MPD client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mpdclient-v0_1_7.flake = false;
  inputs.src-mpdclient-v0_1_7.type = "github";
  inputs.src-mpdclient-v0_1_7.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_1_7.repo = "mpdclient";
  inputs.src-mpdclient-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mpdclient-v0_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mpdclient-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}