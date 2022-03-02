{
  description = ''Read and write to Xiaomi IOT devices.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xiaomi-v0_1_4.flake = false;
  inputs.src-xiaomi-v0_1_4.type = "github";
  inputs.src-xiaomi-v0_1_4.owner = "ThomasTJdev";
  inputs.src-xiaomi-v0_1_4.repo = "nim_xiaomi";
  inputs.src-xiaomi-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-xiaomi-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."multicast".type = "github";
  # inputs."multicast".owner = "riinr";
  # inputs."multicast".repo = "flake-nimble";
  # inputs."multicast".ref = "flake-pinning";
  # inputs."multicast".dir = "nimpkgs/m/multicast";
  # inputs."multicast".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."multicast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xiaomi-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xiaomi-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xiaomi-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}