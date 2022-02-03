{
  description = ''MPD client library'';
  inputs.src-mpdclient-v0_1_1.flake = false;
  inputs.src-mpdclient-v0_1_1.type = "github";
  inputs.src-mpdclient-v0_1_1.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_1_1.repo = "mpdclient";
  inputs.src-mpdclient-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-mpdclient-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpdclient-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}