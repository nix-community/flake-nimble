{
  description = ''ZeroMQ 4 wrapper'';
  inputs.src-zmq-v0_3_1.flake = false;
  inputs.src-zmq-v0_3_1.type = "github";
  inputs.src-zmq-v0_3_1.owner = "nim-lang";
  inputs.src-zmq-v0_3_1.repo = "nim-zmq";
  inputs.src-zmq-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-zmq-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zmq-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zmq-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}