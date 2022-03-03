{
  description = ''libnetfilter_queue wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libnetfilter_queue-master.flake = false;
  inputs.src-libnetfilter_queue-master.type = "github";
  inputs.src-libnetfilter_queue-master.owner = "ba0f3";
  inputs.src-libnetfilter_queue-master.repo = "libnetfilter_queue.nim";
  inputs.src-libnetfilter_queue-master.ref = "refs/heads/master";
  inputs.src-libnetfilter_queue-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libnetfilter_queue-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnetfilter_queue-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libnetfilter_queue-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}