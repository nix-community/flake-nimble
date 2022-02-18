{
  description = ''Circular buffer implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-RingBuffer-v0_1.flake = false;
  inputs.src-RingBuffer-v0_1.type = "github";
  inputs.src-RingBuffer-v0_1.owner = "megawac";
  inputs.src-RingBuffer-v0_1.repo = "RingBuffer.nim";
  inputs.src-RingBuffer-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-RingBuffer-v0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-RingBuffer-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-RingBuffer-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}