{
  description = ''Circular buffer implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-RingBuffer-master.flake = false;
  inputs.src-RingBuffer-master.type = "github";
  inputs.src-RingBuffer-master.owner = "megawac";
  inputs.src-RingBuffer-master.repo = "RingBuffer.nim";
  inputs.src-RingBuffer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-RingBuffer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-RingBuffer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-RingBuffer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}