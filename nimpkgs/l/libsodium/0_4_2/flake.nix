{
  description = ''libsodium wrapper'';
  inputs.src-libsodium-0_4_2.flake = false;
  inputs.src-libsodium-0_4_2.type = "github";
  inputs.src-libsodium-0_4_2.owner = "FedericoCeratto";
  inputs.src-libsodium-0_4_2.repo = "nim-libsodium";
  inputs.src-libsodium-0_4_2.ref = "refs/tags/0.4.2";
  
  outputs = { self, nixpkgs, src-libsodium-0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsodium-0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libsodium-0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}