{
  description = ''ZeroMQ 4 wrapper'';
  inputs.src-zmq-v0_3_4.flake = false;
  inputs.src-zmq-v0_3_4.type = "github";
  inputs.src-zmq-v0_3_4.owner = "nim-lang";
  inputs.src-zmq-v0_3_4.repo = "nim-zmq";
  inputs.src-zmq-v0_3_4.ref = "refs/tags/v0.3.4";
  
  outputs = { self, nixpkgs, src-zmq-v0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zmq-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zmq-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}