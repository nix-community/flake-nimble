{
  description = ''deque implementatoin using DoublyLinkedRing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ringDeque-master.flake = false;
  inputs.src-ringDeque-master.type = "github";
  inputs.src-ringDeque-master.owner = "technicallyagd";
  inputs.src-ringDeque-master.repo = "ringDeque";
  inputs.src-ringDeque-master.ref = "refs/heads/master";
  inputs.src-ringDeque-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ringDeque-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ringDeque-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ringDeque-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}