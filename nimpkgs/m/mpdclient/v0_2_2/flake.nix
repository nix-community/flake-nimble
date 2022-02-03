{
  description = ''MPD client library'';
  inputs.src-mpdclient-v0_2_2.flake = false;
  inputs.src-mpdclient-v0_2_2.type = "github";
  inputs.src-mpdclient-v0_2_2.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_2_2.repo = "mpdclient";
  inputs.src-mpdclient-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-mpdclient-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpdclient-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}