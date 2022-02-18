{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-listenbrainz-0_1_0.flake = false;
  inputs.src-listenbrainz-0_1_0.type = "gitlab";
  inputs.src-listenbrainz-0_1_0.owner = "tandy1000";
  inputs.src-listenbrainz-0_1_0.repo = "listenbrainz-nim";
  inputs.src-listenbrainz-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-listenbrainz-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-listenbrainz-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-listenbrainz-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}