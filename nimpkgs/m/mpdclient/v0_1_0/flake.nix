{
  description = ''MPD client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mpdclient-v0_1_0.flake = false;
  inputs.src-mpdclient-v0_1_0.type = "github";
  inputs.src-mpdclient-v0_1_0.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_1_0.repo = "mpdclient";
  inputs.src-mpdclient-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mpdclient-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mpdclient-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}