{
  description = ''an interface macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-protocoled-master.flake = false;
  inputs.src-protocoled-master.type = "github";
  inputs.src-protocoled-master.owner = "planetis-m";
  inputs.src-protocoled-master.repo = "protocoled";
  inputs.src-protocoled-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-protocoled-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-protocoled-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-protocoled-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}