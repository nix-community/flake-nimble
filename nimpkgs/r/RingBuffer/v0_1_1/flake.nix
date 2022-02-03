{
  description = ''Circular buffer implementation'';
  inputs.src-RingBuffer-v0_1_1.flake = false;
  inputs.src-RingBuffer-v0_1_1.type = "github";
  inputs.src-RingBuffer-v0_1_1.owner = "megawac";
  inputs.src-RingBuffer-v0_1_1.repo = "RingBuffer.nim";
  inputs.src-RingBuffer-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-RingBuffer-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-RingBuffer-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-RingBuffer-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}