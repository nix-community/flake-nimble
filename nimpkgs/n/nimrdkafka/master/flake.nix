{
  description = ''Nim wrapper for librdkafka'';
  inputs.src-nimrdkafka-master.flake = false;
  inputs.src-nimrdkafka-master.type = "github";
  inputs.src-nimrdkafka-master.owner = "dfdeshom";
  inputs.src-nimrdkafka-master.repo = "nimrdkafka";
  inputs.src-nimrdkafka-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimrdkafka-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrdkafka-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimrdkafka-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}