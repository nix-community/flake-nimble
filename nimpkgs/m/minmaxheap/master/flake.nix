{
  description = ''MinMaxHeap'';
  inputs.src-minmaxheap-master.flake = false;
  inputs.src-minmaxheap-master.type = "github";
  inputs.src-minmaxheap-master.owner = "stefansalewski";
  inputs.src-minmaxheap-master.repo = "minmaxheap";
  inputs.src-minmaxheap-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-minmaxheap-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-minmaxheap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-minmaxheap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}