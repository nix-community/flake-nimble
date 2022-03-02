{
  description = ''MinMaxHeap'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-minmaxheap-master.flake = false;
  inputs.src-minmaxheap-master.type = "github";
  inputs.src-minmaxheap-master.owner = "stefansalewski";
  inputs.src-minmaxheap-master.repo = "minmaxheap";
  inputs.src-minmaxheap-master.ref = "refs/heads/master";
  inputs.src-minmaxheap-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-minmaxheap-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-minmaxheap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-minmaxheap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}