{
  description = ''libsodium wrapper'';
  inputs.src-libsodium-master.flake = false;
  inputs.src-libsodium-master.type = "github";
  inputs.src-libsodium-master.owner = "FedericoCeratto";
  inputs.src-libsodium-master.repo = "nim-libsodium";
  inputs.src-libsodium-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libsodium-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsodium-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libsodium-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}