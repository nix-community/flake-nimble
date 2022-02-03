{
  description = ''MPD client library'';
  inputs.src-mpdclient-v0_1_5.flake = false;
  inputs.src-mpdclient-v0_1_5.type = "github";
  inputs.src-mpdclient-v0_1_5.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_1_5.repo = "mpdclient";
  inputs.src-mpdclient-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, src-mpdclient-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpdclient-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}