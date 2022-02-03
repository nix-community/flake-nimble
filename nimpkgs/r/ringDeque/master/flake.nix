{
  description = ''deque implementatoin using DoublyLinkedRing'';
  inputs.src-ringDeque-master.flake = false;
  inputs.src-ringDeque-master.type = "github";
  inputs.src-ringDeque-master.owner = "technicallyagd";
  inputs.src-ringDeque-master.repo = "ringDeque";
  inputs.src-ringDeque-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ringDeque-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ringDeque-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ringDeque-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}