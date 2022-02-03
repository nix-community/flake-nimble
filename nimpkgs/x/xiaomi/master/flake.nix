{
  description = ''Read and write to Xiaomi IOT devices.'';
  inputs.src-xiaomi-master.flake = false;
  inputs.src-xiaomi-master.type = "github";
  inputs.src-xiaomi-master.owner = "ThomasTJdev";
  inputs.src-xiaomi-master.repo = "nim_xiaomi";
  inputs.src-xiaomi-master.ref = "refs/heads/master";
  
  
  inputs."multicast".url = "path:../../../m/multicast";
  inputs."multicast".type = "github";
  inputs."multicast".owner = "riinr";
  inputs."multicast".repo = "flake-nimble";
  inputs."multicast".ref = "flake-pinning";
  inputs."multicast".dir = "nimpkgs/m/multicast";

  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-xiaomi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xiaomi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xiaomi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}