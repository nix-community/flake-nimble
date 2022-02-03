{
  description = ''Nim wrapper around the ngtcp2 library'';
  inputs.src-ngtcp2-main.flake = false;
  inputs.src-ngtcp2-main.type = "github";
  inputs.src-ngtcp2-main.owner = "status-im";
  inputs.src-ngtcp2-main.repo = "nim-ngtcp2";
  inputs.src-ngtcp2-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-ngtcp2-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngtcp2-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ngtcp2-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}