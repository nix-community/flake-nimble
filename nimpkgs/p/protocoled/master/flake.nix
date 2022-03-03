{
  description = ''an interface macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-protocoled-master.flake = false;
  inputs.src-protocoled-master.type = "github";
  inputs.src-protocoled-master.owner = "planetis-m";
  inputs.src-protocoled-master.repo = "protocoled";
  inputs.src-protocoled-master.ref = "refs/heads/master";
  inputs.src-protocoled-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-protocoled-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-protocoled-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-protocoled-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}