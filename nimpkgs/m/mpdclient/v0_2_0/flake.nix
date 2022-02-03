{
  description = ''MPD client library'';
  inputs.src-mpdclient-v0_2_0.flake = false;
  inputs.src-mpdclient-v0_2_0.type = "github";
  inputs.src-mpdclient-v0_2_0.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_2_0.repo = "mpdclient";
  inputs.src-mpdclient-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-mpdclient-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpdclient-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}