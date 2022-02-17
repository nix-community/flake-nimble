{
  description = ''Read and write to Xiaomi IOT devices.'';
  inputs.src-xiaomi-v0_1_4.flake = false;
  inputs.src-xiaomi-v0_1_4.type = "github";
  inputs.src-xiaomi-v0_1_4.owner = "ThomasTJdev";
  inputs.src-xiaomi-v0_1_4.repo = "nim_xiaomi";
  inputs.src-xiaomi-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."multicast".type = "github";
  inputs."multicast".owner = "riinr";
  inputs."multicast".repo = "flake-nimble";
  inputs."multicast".ref = "flake-pinning";
  inputs."multicast".dir = "nimpkgs/m/multicast";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-xiaomi-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xiaomi-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xiaomi-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}