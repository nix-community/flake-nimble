{
  description = ''Nim wrapper around the ngtcp2 library'';
  inputs.src-ngtcp2-0_32_0.flake = false;
  inputs.src-ngtcp2-0_32_0.type = "github";
  inputs.src-ngtcp2-0_32_0.owner = "status-im";
  inputs.src-ngtcp2-0_32_0.repo = "nim-ngtcp2";
  inputs.src-ngtcp2-0_32_0.ref = "refs/tags/0.32.0";
  
  outputs = { self, nixpkgs, src-ngtcp2-0_32_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngtcp2-0_32_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ngtcp2-0_32_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}