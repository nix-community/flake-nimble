{
  description = ''libnetfilter_queue wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libnetfilter_queue-0_1_0.flake = false;
  inputs.src-libnetfilter_queue-0_1_0.type = "github";
  inputs.src-libnetfilter_queue-0_1_0.owner = "ba0f3";
  inputs.src-libnetfilter_queue-0_1_0.repo = "libnetfilter_queue.nim";
  inputs.src-libnetfilter_queue-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-libnetfilter_queue-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libnetfilter_queue-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnetfilter_queue-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libnetfilter_queue-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}