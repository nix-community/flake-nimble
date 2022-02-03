{
  description = ''libnetfilter_queue wrapper for Nim'';
  inputs.src-libnetfilter_queue-0_1_0.flake = false;
  inputs.src-libnetfilter_queue-0_1_0.type = "github";
  inputs.src-libnetfilter_queue-0_1_0.owner = "ba0f3";
  inputs.src-libnetfilter_queue-0_1_0.repo = "libnetfilter_queue.nim";
  inputs.src-libnetfilter_queue-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-libnetfilter_queue-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnetfilter_queue-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libnetfilter_queue-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}