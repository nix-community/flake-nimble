{
  description = ''libnetfilter_queue wrapper for Nim'';
  inputs.src-libnetfilter_queue-master.flake = false;
  inputs.src-libnetfilter_queue-master.type = "github";
  inputs.src-libnetfilter_queue-master.owner = "ba0f3";
  inputs.src-libnetfilter_queue-master.repo = "libnetfilter_queue.nim";
  inputs.src-libnetfilter_queue-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libnetfilter_queue-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnetfilter_queue-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libnetfilter_queue-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}