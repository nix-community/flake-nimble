{
  description = ''API for www.eloverblik.dk'';
  inputs.src-eloverblik-v0_0_1.flake = false;
  inputs.src-eloverblik-v0_0_1.type = "github";
  inputs.src-eloverblik-v0_0_1.owner = "ThomasTJdev";
  inputs.src-eloverblik-v0_0_1.repo = "nim_eloverblik_api";
  inputs.src-eloverblik-v0_0_1.ref = "refs/tags/v0.0.1";
  
  
  inputs."nmqtt".type = "github";
  inputs."nmqtt".owner = "riinr";
  inputs."nmqtt".repo = "flake-nimble";
  inputs."nmqtt".ref = "flake-pinning";
  inputs."nmqtt".dir = "nimpkgs/n/nmqtt";

  outputs = { self, nixpkgs, src-eloverblik-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eloverblik-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eloverblik-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}