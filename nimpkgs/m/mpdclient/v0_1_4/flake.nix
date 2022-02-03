{
  description = ''MPD client library'';
  inputs.src-mpdclient-v0_1_4.flake = false;
  inputs.src-mpdclient-v0_1_4.type = "github";
  inputs.src-mpdclient-v0_1_4.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_1_4.repo = "mpdclient";
  inputs.src-mpdclient-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-mpdclient-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpdclient-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}