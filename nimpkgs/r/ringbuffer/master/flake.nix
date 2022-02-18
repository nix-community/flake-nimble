{
  description = ''Circular buffer implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ringbuffer-master.flake = false;
  inputs.src-ringbuffer-master.type = "github";
  inputs.src-ringbuffer-master.owner = "megawac";
  inputs.src-ringbuffer-master.repo = "RingBuffer.nim";
  inputs.src-ringbuffer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ringbuffer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ringbuffer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ringbuffer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}