{
  description = ''A pure-nim implementation of the STOMP protocol for machine messaging.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stomp-master.flake = false;
  inputs.src-stomp-master.type = "github";
  inputs.src-stomp-master.owner = "mahlonsmith";
  inputs.src-stomp-master.repo = "nim-stomp";
  inputs.src-stomp-master.ref = "refs/heads/master";
  inputs.src-stomp-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stomp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stomp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stomp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}