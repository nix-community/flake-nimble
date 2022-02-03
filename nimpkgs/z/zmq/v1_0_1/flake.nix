{
  description = ''ZeroMQ 4 wrapper'';
  inputs.src-zmq-v1_0_1.flake = false;
  inputs.src-zmq-v1_0_1.type = "github";
  inputs.src-zmq-v1_0_1.owner = "nim-lang";
  inputs.src-zmq-v1_0_1.repo = "nim-zmq";
  inputs.src-zmq-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, src-zmq-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zmq-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zmq-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}