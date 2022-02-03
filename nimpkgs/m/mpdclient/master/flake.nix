{
  description = ''MPD client library'';
  inputs.src-mpdclient-master.flake = false;
  inputs.src-mpdclient-master.type = "github";
  inputs.src-mpdclient-master.owner = "SolitudeSF";
  inputs.src-mpdclient-master.repo = "mpdclient";
  inputs.src-mpdclient-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mpdclient-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpdclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}