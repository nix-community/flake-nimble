{
  description = ''proc to join (and leave) a multicast group'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-multicast-master.flake = false;
  inputs.src-multicast-master.type = "github";
  inputs.src-multicast-master.owner = "enthus1ast";
  inputs.src-multicast-master.repo = "nimMulticast";
  inputs.src-multicast-master.ref = "refs/heads/master";
  inputs.src-multicast-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-multicast-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-multicast-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-multicast-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}