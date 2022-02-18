{
  description = ''Read and write to Xiaomi IOT devices.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xiaomi-v0_1_2.flake = false;
  inputs.src-xiaomi-v0_1_2.type = "github";
  inputs.src-xiaomi-v0_1_2.owner = "ThomasTJdev";
  inputs.src-xiaomi-v0_1_2.repo = "nim_xiaomi";
  inputs.src-xiaomi-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-xiaomi-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xiaomi-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xiaomi-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}