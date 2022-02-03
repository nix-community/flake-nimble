{
  description = ''Hashicorp Vault HTTP Client'';
  inputs.src-vaultclient-0_1_0.flake = false;
  inputs.src-vaultclient-0_1_0.type = "github";
  inputs.src-vaultclient-0_1_0.owner = "jackhftang";
  inputs.src-vaultclient-0_1_0.repo = "vaultclient.nim";
  inputs.src-vaultclient-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-vaultclient-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vaultclient-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vaultclient-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}