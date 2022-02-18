{
  description = ''deque implementatoin using DoublyLinkedRing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ringdeque-master.flake = false;
  inputs.src-ringdeque-master.type = "github";
  inputs.src-ringdeque-master.owner = "technicallyagd";
  inputs.src-ringdeque-master.repo = "ringDeque";
  inputs.src-ringdeque-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ringdeque-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ringdeque-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ringdeque-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}