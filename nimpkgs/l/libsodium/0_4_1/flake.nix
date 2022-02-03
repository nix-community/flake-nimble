{
  description = ''libsodium wrapper'';
  inputs.src-libsodium-0_4_1.flake = false;
  inputs.src-libsodium-0_4_1.type = "github";
  inputs.src-libsodium-0_4_1.owner = "FedericoCeratto";
  inputs.src-libsodium-0_4_1.repo = "nim-libsodium";
  inputs.src-libsodium-0_4_1.ref = "refs/tags/0.4.1";
  
  outputs = { self, nixpkgs, src-libsodium-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsodium-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libsodium-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}