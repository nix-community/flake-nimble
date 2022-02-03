{
  description = ''API for www.eloverblik.dk'';
  inputs.src-eloverblik-v0_0_7.flake = false;
  inputs.src-eloverblik-v0_0_7.type = "github";
  inputs.src-eloverblik-v0_0_7.owner = "ThomasTJdev";
  inputs.src-eloverblik-v0_0_7.repo = "nim_eloverblik_api";
  inputs.src-eloverblik-v0_0_7.ref = "refs/tags/v0.0.7";
  
  
  inputs."nmqtt".url = "path:../../../n/nmqtt";
  inputs."nmqtt".type = "github";
  inputs."nmqtt".owner = "riinr";
  inputs."nmqtt".repo = "flake-nimble";
  inputs."nmqtt".ref = "flake-pinning";
  inputs."nmqtt".dir = "nimpkgs/n/nmqtt";

  outputs = { self, nixpkgs, src-eloverblik-v0_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eloverblik-v0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eloverblik-v0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}