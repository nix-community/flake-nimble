{
  description = ''libsodium wrapper'';
  inputs.src-libsodium-0_3_0.flake = false;
  inputs.src-libsodium-0_3_0.type = "github";
  inputs.src-libsodium-0_3_0.owner = "FedericoCeratto";
  inputs.src-libsodium-0_3_0.repo = "nim-libsodium";
  inputs.src-libsodium-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-libsodium-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsodium-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libsodium-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}