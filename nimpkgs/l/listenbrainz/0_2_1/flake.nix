{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';
  inputs.src-listenbrainz-0_2_1.flake = false;
  inputs.src-listenbrainz-0_2_1.type = "gitlab";
  inputs.src-listenbrainz-0_2_1.owner = "tandy1000";
  inputs.src-listenbrainz-0_2_1.repo = "listenbrainz-nim";
  inputs.src-listenbrainz-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-listenbrainz-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-listenbrainz-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-listenbrainz-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}