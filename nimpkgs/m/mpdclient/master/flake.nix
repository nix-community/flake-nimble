{
  description = ''MPD client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mpdclient-master.flake = false;
  inputs.src-mpdclient-master.type = "github";
  inputs.src-mpdclient-master.owner = "SolitudeSF";
  inputs.src-mpdclient-master.repo = "mpdclient";
  inputs.src-mpdclient-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mpdclient-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mpdclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}