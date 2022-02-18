{
  description = ''Circular buffer implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ringbuffer-v0_1_1.flake = false;
  inputs.src-ringbuffer-v0_1_1.type = "github";
  inputs.src-ringbuffer-v0_1_1.owner = "megawac";
  inputs.src-ringbuffer-v0_1_1.repo = "RingBuffer.nim";
  inputs.src-ringbuffer-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ringbuffer-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ringbuffer-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ringbuffer-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}