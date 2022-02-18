{
  description = ''Simple binary heap implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-binaryheap-master.flake = false;
  inputs.src-binaryheap-master.type = "github";
  inputs.src-binaryheap-master.owner = "bluenote10";
  inputs.src-binaryheap-master.repo = "nim-heap";
  inputs.src-binaryheap-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-binaryheap-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binaryheap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-binaryheap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}