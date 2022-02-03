{
  description = ''API for www.eloverblik.dk'';
  inputs.src-eloverblik-v0_0_4.flake = false;
  inputs.src-eloverblik-v0_0_4.type = "github";
  inputs.src-eloverblik-v0_0_4.owner = "ThomasTJdev";
  inputs.src-eloverblik-v0_0_4.repo = "nim_eloverblik_api";
  inputs.src-eloverblik-v0_0_4.ref = "refs/tags/v0.0.4";
  
  
  inputs."nmqtt".url = "path:../../../n/nmqtt";
  inputs."nmqtt".type = "github";
  inputs."nmqtt".owner = "riinr";
  inputs."nmqtt".repo = "flake-nimble";
  inputs."nmqtt".ref = "flake-pinning";
  inputs."nmqtt".dir = "nimpkgs/n/nmqtt";

  outputs = { self, nixpkgs, src-eloverblik-v0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eloverblik-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eloverblik-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}