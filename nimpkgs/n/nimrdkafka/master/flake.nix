{
  description = ''Nim wrapper for librdkafka'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimrdkafka-master.flake = false;
  inputs.src-nimrdkafka-master.type = "github";
  inputs.src-nimrdkafka-master.owner = "dfdeshom";
  inputs.src-nimrdkafka-master.repo = "nimrdkafka";
  inputs.src-nimrdkafka-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrdkafka-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrdkafka-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrdkafka-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}